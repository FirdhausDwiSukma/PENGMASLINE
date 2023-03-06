<x-guest-layout>

    <form method="POST" action="{{ route('register') }}">
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
              src="../assets/img/create-account-office.jpeg"
              alt="Office"
            /></a>
            <a href="/"><img
              aria-hidden="true"
              class="hidden object-cover w-full h-full dark:block"
              src="../assets/img/create-account-office-dark.jpeg"
              alt="Office"
            /></a>
          </div>
          <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">
               <!-- Validation Errors -->
               <x-auth-validation-errors class="mb-4" :errors="$errors" />
              <h1
                class="mb-4 text-xl font-semibold text-gray-700 dark:text-gray-200"
              >
                Buat Akun
              </h1>
              <!-- NIK -->
          <div>
              <x-label for="nik" :value="__('NIK')" />

              <x-input id="nik" class="block mt-1 w-full" type="text" name="nik" :value="old('nik')" required autofocus />
          </div>

          <!-- Name -->
          <div class="mt-4">
              <x-label for="name" :value="__('Nama')" />

              <x-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus />
          </div>

          <!-- Email Address -->
          <div class="mt-4">
              <x-label for="email" :value="__('Email')" />

              <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
          </div>

          <!-- Phone -->
          <div class="mt-4">
              <x-label for="phone" :value="__('No. HP')" />

              <x-input id="phone" class="block mt-1 w-full" type="text" name="phone" :value="old('phone')" required />
              <p class="text-grey text-xs mt-1">* Masukkan nomor yang bisa dihubungi</p>
              
          </div>

          <!-- Password -->
          <div class="mt-4">
              <x-label for="password" :value="__('Password')" />

              <x-input id="password" class="block mt-1 w-full"
                              type="password"
                              name="password"
                              required autocomplete="new-password" />
          </div>

          <!-- Confirm Password -->
          <div class="mt-4">
              <x-label for="password_confirmation" :value="__('Confirm Password')" />

              <x-input id="password_confirmation" class="block mt-1 w-full"
                              type="password"
                              name="password_confirmation" required />
          </div>

          <div class="flex items-center justify-end mt-4">
              <x-button class="ml-3 bg-purple-500 text-white font-bold rounded-md my-3 py-3 px-4 shadow-lg focus:outline-none focus:shadow-outline transform transition hover:bg-blue-500 hover:scale-105 duration-300 ease-in-out">
                  {{ __('Daftar') }}
              </x-button>
          </div>

              <hr class="my-6" />
             
              <p class="mt-4">
                <a class="text-sm font-medium text-blue-600 dark:text-purple-400 hover:underline" href="{{ route('login') }}">
                  {{ __('Sudah mempunyai akun?') }}
              </a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    </form>
</x-guest-layout>
