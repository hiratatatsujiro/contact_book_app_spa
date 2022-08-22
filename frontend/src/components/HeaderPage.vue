/* eslint-disable */
<template>
  <div>
    <v-app-bar dark app color="blue">
      <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>
      <v-app-bar-title>Contact Book App</v-app-bar-title>
      <v-tabs class="d-flex justify-end align-right">
        <v-tab><router-link to="/sign_up">新規登録</router-link></v-tab>
        <v-tab> ログイン </v-tab>
      </v-tabs>
    </v-app-bar>
    <v-navigation-drawer v-model="drawer" fixed temporary>
      <v-list nav dense>
        <v-list-item-group>
          <v-list-item v-for="menu in menus" :key="menu">
            <v-list-item-title>{{ menu }}</v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
  </div>
</template>

<script>
export default {
  name: "HeaderPage",

  components: {},

  data: () => ({
    menus: ["連絡", "日記", "学級通信", "チャットルーム", "時間わり", "フリーマーケット"],
    drawer: false,
  }),
};
</script>

<style></style>
