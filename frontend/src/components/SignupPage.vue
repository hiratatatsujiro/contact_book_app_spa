<template>
  <div class="container">
    <v-card class="d-flex flex-column my-1 mx-auto" width="800">
      <v-form ref="form">
        <v-card-title class="d-flex justify-center pa-0 mt-8 mb-3">新規登録</v-card-title>
        <v-card-text class="d-flex justify-center flex-column">
          <v-text-field label="ニックネーム" outlined dense></v-text-field>
          <v-text-field
            label="姓"
            placeholder="全角漢字・ひらがなで入力してください"
            outlined
            dense
          ></v-text-field>
          <v-text-field
            label="名"
            placeholder="全角漢字・ひらがなで入力してください"
            outlined
            dense
          ></v-text-field>
          <v-text-field
            label="セイ"
            placeholder="全角カタカナで入力してください"
            outlined
            dense
          ></v-text-field>
          <v-text-field
            label="メイ"
            placeholder="全角カタカナで入力してください"
            outlined
            dense
          ></v-text-field>

          <v-textarea label="自己紹介" outlined dense></v-textarea>
          <v-btn>登録</v-btn>
        </v-card-text>
      </v-form>
    </v-card>
  </div>
</template>

<script>
export default {
  name: "SignUpPage",
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
