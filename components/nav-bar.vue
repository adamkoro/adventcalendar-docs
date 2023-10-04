<template>
    <header
        class="header top-1 bg-white dark:bg-slate-800 shadow-md flex items-center justify-between px-4 mb-5 rounded">
        <!-- logo -->
        <h1 class="w-1/3">
            <div class="flex items-center gap-1 cursor-pointer">
                <img src="/geeko.svg" class="h-6" />
                <NuxtLink to="/home" class="text-l font-semibold ">AdventCalendar Documentation</NuxtLink>
            </div>
        </h1>
        <nav class="nav font-semibold">
            <ul class="flex items-center">
                <div v-if="activeNavLink == 'home'">
                    <li class="p-4 border-b-2 border-primary-500 border-opacity-100 text-primary-500 cursor-pointer">
                        <NuxtLink to="/">Home</NuxtLink>
                    </li>
                </div>
                <div v-else>
                    <li
                        class="p-4 border-b-2 border-primary-500 border-opacity-0 hover:border-opacity-100 hover:text-primary-500 duration-200 cursor-pointer">
                        <NuxtLink to="/">Home</NuxtLink>
                    </li>
                </div>
                <div v-if="activeNavLink == 'days'">
                    <li class="p-4 border-b-2 border-primary-500 border-opacity-100 text-primary-500 cursor-pointer">
                        <NuxtLink to="/docs/frontend">Frontend</NuxtLink>
                    </li>
                </div>
                <div v-else>
                    <li
                        class="p-4 border-b-2 border-primary-500 border-opacity-0 hover:border-opacity-100 hover:text-primary-500 duration-200 cursor-pointer">
                        <NuxtLink to="/docs/frontend">Frontend</NuxtLink>
                    </li>
                </div>
                <div v-if="activeNavLink == 'users'">
                    <li class="p-4 border-b-2 border-primary-500 border-opacity-100 text-primary-500 cursor-pointer">
                        <NuxtLink to="/docs/backend">Backend</NuxtLink>
                    </li>
                </div>
                <div v-else>
                    <li
                        class="p-4 border-b-2 border-primary-500 border-opacity-0 hover:border-opacity-100 hover:text-primary-500 duration-200 cursor-pointer">
                        <NuxtLink to="/docs/backend">Backend</NuxtLink>
                    </li>
                </div>
            </ul>
        </nav>
        <div class="w-1/3 flex justify-end">
            <div>
                <UInput icon="i-heroicons-magnifying-glass-20-solid" v-model="filterInput" placeholder="Search..." class="w-96 mx-4"/>
            </div>
            <div class="mr-4">
                <DarkLightButton/>
            </div>
            <div class="flex font-semibold items-center mr-4">
                <ClientOnly>
                    <img class="h-5 mr-1" :src="picture"  />
                </ClientOnly>
                <NuxtLink target="_blank" to="https://github.com/adamkoro/adventcalendar">Github</NuxtLink>
            </div>
        </div>
    </header>
</template>
<script setup>
const activeNavLink = ref(null)
const colorMode = useColorMode()
const picture = computed(() => {
    if (colorMode.value === 'dark') {
        return "/github-mark-white.svg"
    } else {
        return "/github-mark.svg"
    }
})
</script>