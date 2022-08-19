import Vue from "vue";
import VueRouter from "vue-router";
import HomePage from "./components/HomePage";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "home",
    component: HomePage,
  },
];

const router = new VueRouter({
  mode: "history",
  routes, // short for `routes: routes`
});

export default router;
