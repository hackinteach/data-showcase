<template>
  <v-expansion-panel>
    <v-expansion-panel-content v-for="(d,i) in data" :key="i">
      <div slot="header">{{i}}</div>
      <v-list>
        <v-list-group
          v-for="(obj,j) in d"
          :key="j"
          no-action>
          <v-list-tile slot="activator">
            <v-list-tile-content>
              <v-list-tile-title>
                {{d[j].Name}} <!--index-->
              </v-list-tile-title>
            </v-list-tile-content>
          </v-list-tile>
          <div
            v-for="(subobj, k) in obj"
            :key="k"
            @click=""
          >
            <div v-if="Array.isArray(subobj)">
              <v-list-group sub-group>
                <v-list-tile slot="activator">
                  <v-list-tile-content>
                    <v-list-tile-title>
                      {{k}} <!--index-->
                    </v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>
                <v-list-tile
                  v-for="(q,x) in subobj"
                  :key="x"

                >
                  <v-list-tile-action>
                    {{x}} : {{q}}
                  </v-list-tile-action>
                </v-list-tile>
              </v-list-group>
            </div>
            <div v-else>
              <v-list-tile>
                <v-list-tile-content>
                  <v-list-tile-action>
                    {{k}} : {{subobj}}
                  </v-list-tile-action>
                </v-list-tile-content>
              </v-list-tile>
            </div>
          </div>
        </v-list-group>
      </v-list>
      <!--<div v-for="(obj,j) in d" :key="j">-->
      <!--<v-subheader>{{j}}</v-subheader>-->
      <!--<p v-for="(item, k) in obj" :key="k">-->
      <!--{{k}} : {{item}}-->
      <!--</p>-->
      <!--<v-divider/>-->
      <!--</div>-->
    </v-expansion-panel-content>
  </v-expansion-panel>
</template>

<script>
  import {data} from '../assets/data.js';

  export default {
    data: () => ({
      data: data,
    })
  }
</script>

<style scoped>

</style>
