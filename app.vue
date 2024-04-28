<template>
    <section class="splash-screen flex items-center flex-col">
      <img class="logo" src="/logo.svg">
      <div class="shadow" />
      <img class="animation" src="/sloughi-run-loop.gif" loop autoplay ref="animation" />
    </section>
</template>
<style>
body {
  margin: 0;
}
.splash-screen {
  position: relative;
  height: 100vh;
}
.animation {
  z-index: 1;
  position: absolute;
  object-fit: cover;
  height: 100vh;
  min-width: 100%;
  max-width: 100%;
}
.shadow {
  z-index: 2;
  position: absolute;
  box-shadow: 0 18px 170px 44px rgba(0,0,0,1) inset;
  height: 100vh;
  min-width: 100%;
  max-width: 100%;
  opacity: .8;
}
.logo {
  z-index: 3;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  filter: drop-shadow(8px 8px 0 rgb(0 0 0 / 0.8));
}
</style>
