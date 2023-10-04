<template>
    <footer class="bg-white dark:bg-slate-800 shadow-md rounded ">
        <div class="flex items-center justify-between w-full mx-auto mt-auto max-w-screen">
            <nav class="nav font-semibold">
                <ul class="flex flex-wrap">
                    <li class="p-3 text-sm hover:text-primary-500 duration-200 cursor-pointer flex flex-wrap items-center">
                        
                    </li>
                </ul>
            </nav>
            <div class="w-1/3 flex justify-end mr-5">
                <div class="">
                    <DarkLightButton/>
                </div>
            </div>
        </div>
    </footer>
</template>
<script setup>
import { ref } from 'vue'
const colorMode = useColorMode()
const picture = computed(() => {
    if (colorMode.value === 'dark') {
        return "/github-mark-white.svg"
    } else {
        return "/github-mark.svg"
    }
})
</script>