<template>
  <ul>
    <li v-for="user in userList" :key="user.id">{{ user.name }}</li>
  </ul>
</template>

<script>
import axios from 'axios'
export default {
  name: 'App',
  components: {
  },
  data() {
    return {
      userList: []
    }
  },
  mounted() {
    axios.get('http://localhost:3000/api/users').then(res => {
      this.userList = res.data
    })
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
