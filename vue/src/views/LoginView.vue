<template>
  <div id="login">
    <div class="login-container">
      <form v-on:submit.prevent="login">
        <h1>Sign In</h1>
        <div role="alert" v-if="invalidCredentials">
          Invalid username and password!
        </div>
        <div role="alert" v-if="this.$route.query.registration">
          Thank you for registering, please sign in.
        </div>
        <div class="form-input-group">
          <label for="username">Username</label>
        </div>
        <div class="input-wrapper">
          <input type="text" id="username" v-model="user.username" required autofocus placeholder="Enter Your Username..." />
          <i class="bi bi-person icon" aria-hidden="true"></i>
        </div>
        <br/>
        <div class="form-input-group">
          <label for="password">Password</label>
        </div>
        <div class="input-wrapper">
          <input type="password" id="password" v-model="user.password" required placeholder="Enter Your Password..."/>
          <i class="bi bi-lock-fill icon" aria-hidden="true"></i>
        </div>
        <br/>
        <button type="submit" class="submit-button">Sign in</button>
        <p class="signup-button">
          <router-link v-bind:to="{ name: 'register' }" id="hyper-link">Need an account? Sign up.</router-link>
        </p>
      </form>
    </div>

  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            
            const user = response.data.user;
            
            const role = user.authorities.length > 0 ? user.authorities[0].name : null;
            
            user.role = role;

            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>

<style scoped>
.form-input-group {
  margin-bottom: 1rem;
  
}

label {
  margin-right: 0.5rem;
  display: block;
}

#login {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background: url('@/assets/art2.jpg') no-repeat center center fixed;
  background-size: cover;
  margin: 0;
  color: white;
  overflow: hidden;
}

.login-container {
  background-color: #52505043;
  padding: 40px;
  padding-left: 20px;
  padding-right: 20px;
  border-radius: 7%;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  width: 100%;
  max-width: 400px;
}

input::placeholder{
  color: white;
}

#hyper-link:hover{
    color: orange;
    text-decoration: underline;
    
}

#hyper-link{
  color: white;
}


h1 {
  margin-bottom: 1rem;
  border-radius: 4px;
  margin-bottom: 1rem;
}

.submit-button {
  color: white;
  padding: .75rem;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 1rem;
  margin-top: 1rem;
  margin-bottom: 1rem;
  display: flex;
  margin: auto;
  background-color:rgb(158, 54, 10) ;
}
.submit-button:hover {
  background-color: #d14b06;
}
.input-wrapper{
  position: relative;
  color: white;
}

input {
  width: 100%;
  padding: .75rem;
  border-radius: 4px;
  border: 1px solid #444;
  background-color: white;
  
}
input:focus {
  outline: none;
  border-color: #d14b06;
  box-shadow: 0 0 5px #d14b06;
}


.signup-button {
  display: flex;
  margin-top: 10px;
  justify-content: center;
  
}

.icon {
  position: absolute;
  right: .75rem;
  top: 50%;
  transform: translateY(-50%);
  color: rgb(16, 16, 16);
  font-size: 20px;
}


</style>