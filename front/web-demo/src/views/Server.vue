<template>
  <v-container>
    <v-layout text-xs-center wrap>
      <v-flex xs12 sm6 offset-sm3>
        <v-card>
          <v-text class="black--text">Power controller</v-text>
          <v-card-text>
            <v-container fluid grid-list-lg>
              <v-layout row wrap v-for="(slider, index) in sliders" :key="index">
                <v-flex xs9>
                  <v-slider v-model="slider.value" :max="10000" :color="slider.color" :label="slider.label"></v-slider>
                </v-flex>
                <v-flex xs3>
                  <v-text-field v-model="slider.value" class="mt-0" label="ms" type="number"></v-text-field>
                </v-flex>
                <v-flex xs12 text-xs-center>
                  <v-btn fab dark large :color="getButtonColor(slider.label)" @click="set_color(index)">
                    <v-icon dark>power_settings_new</v-icon>
                  </v-btn>
                </v-flex>
              </v-layout>
            </v-container>
          </v-card-text>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      sliders: [
        { label: 'wyse-01', value: 420, color: '#FC9E4F', pin: 32 },
        { label: 'wyse-02', value: 420, color: '#FC9E4F', pin: 25 },
        { label: 'wyse-03', value: 420, color: '#FC9E4F', pin: 26 }
      ],
      computerStates: {}
    };
  },
  created() {
    this.fetchComputerStates();

    // Refresh computer states every second
    setInterval(this.fetchComputerStates, 1000);
  },
  methods: {
    fetchComputerStates() {
      // Make a GET request to fetch computer states
      this.$ajax
        .get("/api/v1/computers/state")
        .then(response => {
          this.computerStates = response.data;
        })
        .catch(error => {
          console.error(error);
        });
    },
    getButtonColor(label) {
      // Retrieve the state for the specified label from computerStates
      const state = this.computerStates[label];
      // Set the button color based on the state
      return state === 1 ? 'red' : 'green';
    },
    set_color(index) {
      const slider = this.sliders[index];
      this.$ajax
        .post("/api/v1/server/power", {
          duration: slider.value,
          pin: slider.pin
        })
        .then(data => {
          console.log(data);
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
};
</script>
