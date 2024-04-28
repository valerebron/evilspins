<template>
    <section class="splash-screen flex items-center flex-col">
      <img class="logo" src="/logo.svg">
      <div class="shadow screen" />
      <div class="noise screen" />
      <video class="animation screen" src="/sloughi-run-loop.webm" loop autoplay muted ref="animation" />
    </section>
</template>
<style>
body {
  margin: 0;
}
.screen {
  position: absolute;
  height: 100vh;
  min-width: 100%;
  max-width: 100%;
}
.splash-screen {
  position: relative;
  height: 100vh;
  background-color: black;
}
.animation {
  z-index: 1;
  object-fit: cover;
  opacity: .8;
  /* opacity: 0; */
}
.noise {
  z-index: 2;
  background-size: 300px;
  background-image: url("~/public/noise.gif");
  opacity: 0.1;
}
.shadow {
  z-index: 3;
  box-shadow: 0 0  200px 150px rgba(3,0,0,1) inset;
  opacity: .9;
}
.logo {
  z-index: 4;
  position: absolute;
  top: 50%;
  left: 50%;
  max-width: 80%;
  transform: translate(-50%, -50%);
  filter: drop-shadow(8px 8px 0 rgb(0 0 0 / 0.8));
}
</style>
