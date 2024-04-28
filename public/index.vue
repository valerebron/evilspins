<template>
  <div class="min-h-screen flex flex-col justify-center content-center">
    <section class="flex items-center flex-col">
      <img src="logo.svg">
      <div class="shadow" />
      <video src="sloughi-run-loop.webm" loop autoplay />
    </section>
  </div>
</template>

<style>
img {
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: center;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  filter: drop-shadow(8px 8px 0 rgb(0 0 0 / 0.8));
}
video {
  object-fit: cover;
  height: 100vh;
  min-width: 100%;
}
.shadow {
  position: absolute;
  box-shadow: 0 18px 170px 44px rgba(0,0,0,1) inset;
  height: 100vh;
  min-width: 100%;
  opacity: .8;
}
</style>
