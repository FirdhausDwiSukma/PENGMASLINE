<x-guest-layout>
<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.8.2/dist/alpine.min.js" defer></script>
    <form method="POST" action="{{ route('password.update') }}"> 
        @csrf
    <div class="flex items-center min-h-screen p-6 bg-gray-200 dark:bg-gray-900">
      <div
        class="flex-1 h-full max-w-4xl mx-auto overflow-hidden bg-white rounded-lg shadow-xl dark:bg-gray-800"
      >
        <div class="flex flex-col overflow-y-auto md:flex-row">
          <div class="h-32 md:h-auto md:w-1/2">
            <img
              aria-hidden="true"
              class="object-cover w-full h-full dark:hidden"
              src="../assets/img/forgot-password-office.jpeg"
              alt="Office"
            />
            <img
              aria-hidden="true"
              class="hidden object-cover w-full h-full dark:block"
              src="../assets/img/forgot-password-office-dark.jpeg"
              alt="Office"
            />
          </div>
  
          <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">
              <!-- Session Status -->
              <x-auth-validation-errors class="mb-4" :errors="$errors" />
              <h1
                class="mb-4 text-xl font-semibold text-gray-700 dark:text-gray-200"
              >
                Lupa Password
              </h1>
              
              <!-- Password Reset Token -->
           <input type="hidden" name="token" value="{{ $request->route('token') }}">

           <!-- Email Address -->
           <div>
               <x-label for="email" :value="__('Email')" />

               <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email', $request->email)" required autofocus />
           </div>

           <!-- Password -->
           <div class="mt-4">
               <x-label for="password" :value="__('Password')" />

               <x-input id="password" class="block mt-1 w-full" type="password" name="password" required />
           </div>

           <!-- Confirm Password -->
           <div class="mt-4">
               <x-label for="password_confirmation" :value="__('Confirm Password')" />

               <x-input id="password_confirmation" class="block mt-1 w-full"
                                   type="password"
                                   name="password_confirmation" required />
           </div>

           <div class="flex items-center justify-end mt-4">
               <x-button>
                   {{ __('Reset Password') }}
               </x-button>
           </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    </form>
</x-guest-layout>
