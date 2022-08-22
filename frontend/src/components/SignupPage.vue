<template>
  <div class="container">
    <v-card class="d-flex flex-column my-1 mx-auto" width="800">
      <v-form ref="form" @submit="signUp">
        <v-card-title class="d-flex justify-center pa-0 mt-8 mb-3">新規登録</v-card-title>
        <v-card-text class="d-flex justify-center flex-column">
          <v-text-field label="ニックネーム" outlined dense></v-text-field>
          <v-select :grade="grade" label="年生" dense v-model="grade_id"></v-select>
          <v-select :classroom="classroom" label="組" dense v-model="classroom_id"></v-select>
          <v-select :number="number" label="出席番号" dense v-model="number"></v-select>
          <v-text-field
            label="姓"
            placeholder="全角漢字・ひらがなで入力してください"
            outlined
            dense
            v-model="last_name"
          ></v-text-field>
          <v-text-field
            label="名"
            placeholder="全角漢字・ひらがなで入力してください"
            outlined
            dense
            v-model="first_name"
          ></v-text-field>
          <v-text-field
            label="セイ"
            placeholder="全角カタカナで入力してください"
            outlined
            dense
            v-model="last_name_reading"
          ></v-text-field>
          <v-text-field
            label="メイ"
            placeholder="全角カタカナで入力してください"
            outlined
            dense
            v-model="first_name_reading"
          ></v-text-field>
          <p>生年月日</p>
          <v-select v-bind:years="years" label="年" dense v-model="year"></v-select>
          <v-select :months="months" label="月" dense v-model="month"></v-select>
          <v-select :days="days" label="日" dense v-model="day"></v-select>
          <v-text-field
            label="email"
            placeholder="mail@example.com"
            outlined
            dense
            v-model="email"
          ></v-text-field>
          <v-text-field
            label="password"
            placeholder="6文字以上の半角英数記号"
            outlined
            dense
            v-model="password"
          ></v-text-field>
          <v-text-field
            label="password_confirmation"
            placeholder="6文字以上の半角英数記号"
            outlined
            dense
            v-model="password_confirmation"
          ></v-text-field>
          <v-textarea label="自己紹介" outlined dense v-model="introduction"></v-textarea>
          <v-btn>登録</v-btn>
        </v-card-text>
      </v-form>
    </v-card>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "SignUpPage",
  data() {
    return {
      first_name: "",
      last_name: "",
      first_name_reading: "",
      last_name_reading: "",
      introduction: "",
      years: [1988, 1999, 2000],
      months: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      days: [
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
        26, 27, 28, 29, 30, 31,
      ],
      grade: [1, 2, 3, 4, 5, 6],
      classroom: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, "A", "B"],
      number: [
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
        26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 28, 39, 40,
      ],
    };
  },
  methids: {
    async signUp() {
      try {
        const res = await axios.post("http://localhost:3000/auth", {
          first_name: this.first_name,
          last_name: this.last_name,
          first_name_reading: this.first_name_reading,
          last_name_reading: this.last_name_reading,
          introduction: this.introduction,
          birthday: this.years + this.months + this.days,
          grade_id: this.grade,
          classroom_id: this.classroom,
          number: this.number,
          email: this.email,
          password: this.password,
          password_confirmation: this.passwordConfirmation,
        });
        return res;
      } catch (error) {
        console.log(error);
      }
    },
  },
};
</script>

<style>
.container {
  padding: 80px;
  background-color: aliceblue;
}

.form {
  text-align: center;
  margin-top: 30px;
}
</style>
