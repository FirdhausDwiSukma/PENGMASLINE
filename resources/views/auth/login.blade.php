<x-guest-layout>
<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.8.2/dist/alpine.min.js" defer></script>
    <form method="POST" action="{{ route('login') }}">            
        @csrf
    <div class="flex items-center min-h-screen p-6 bg-gray-200 dark:bg-gray-900">
      <div
        class="flex-1 h-full max-w-4xl mx-auto overflow-hidden bg-white rounded-lg shadow-xl dark:bg-gray-800"
      >
        <div class="flex flex-col overflow-y-auto md:flex-row">
          <div class="h-32 md:h-auto md:w-1/2">
            <a href="/"><img
              aria-hidden="true"
              class="object-cover w-full h-full dark:hidden"
              src="../assets/img/login-office.jpeg"
              alt="Office"
            /></a>
            <a href="/"><img
              aria-hidden="true"
              class="hidden object-cover w-full h-full dark:block"
              src="../assets/img/login-office-dark.jpeg"
              alt="Office"
            /></a>
          </div>
  
          <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">
              <!-- Session Status -->
              <x-auth-session-status class="mb-4" :status="session('status')" />
              <!-- Validation Errors -->
              <x-auth-validation-errors class="mb-4" :errors="$errors" />
              <h1
                class="mb-4 text-xl font-semibold text-gray-700 dark:text-gray-200"
              >
                Masuk
              </h1>
              
              <label class="block mt-4 text-sm">
                <x-label for="email" :value="__('Email')" />

                <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
              </label>

              <label class="block mt-4 text-sm">
                <x-label for="password" :value="__('Password')" />
 
                <x-input id="password" class="block mt-1 w-full"
                    type="password"
                    name="password"
                    required autocomplete="current-password" />
                    
              </label>


              <div class="flex items-center justify-end mt-4">
                <x-button class="ml-3  bg-purple-500 text-white font-bold rounded-md my-3 py-3 px-4 shadow-lg focus:outline-none focus:shadow-outline transform transition hover:bg-blue-500 hover:scale-105 duration-300 ease-in-out">
                    {{ __('Masuk') }}
                </x-button>
              </div>

              <hr class="my-6" />

             
              <p class="mt-4">
                @if (Route::has('password.request'))
                    <a class="text-sm font-medium text-blue-600 dark:text-purple-400 hover:underline" href="{{ route('password.request') }}">
                        {{ __('Lupa Password?') }}
                    </a>
                @endif
              </p>
              <p class="mt-1">
                <a class="text-sm font-medium text-blue-600 dark:text-purple-400 hover:underline" href="{{ route('register') }}">
                    {{ __('Belum punya akun?') }}
                </a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    </form>
    
</x-guest-layout>
