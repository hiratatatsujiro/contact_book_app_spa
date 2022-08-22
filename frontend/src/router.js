import Vue from "vue";
import VueRouter from "vue-router";
import HomePage from "./components/HomePage";
import SignupPage from "./components/SignupPage";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "home",
    component: HomePage,
  },
  {
    path: "/sign_up",
    name: "signup",
    component: SignupPage,
  },
];

const router = new VueRouter({
  mode: "history",
  routes, // short for `routes: routes`
});

export default router;
