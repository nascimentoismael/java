<%-- 
    Document   : formCarro
    Created on : 27 de mar. de 2022, 19:20:07
    Author     : ismaeldeazevedonascimento
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Monte seu Carro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="resetCss.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
      <header class="text-gray-600 body-font">
        <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
            <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0" href="index.html">
          <i class="text-4xl text-blue-600 fab fa-java"></i>
          <span class="ml-3 text-xl">POOA - Vianna JR</span>
        </a>
          <nav class="md:ml-auto flex flex-wrap items-center text-base justify-center">
              <a class="mr-5 hover:text-gray-900" href="index.html">Home</a>
              <a class="mr-5 hover:text-gray-900" href="Carro.html">Exercício 1</a>
            <a class="mr-5 hover:text-gray-900">Exercício 2</a>
            <a class="mr-5 hover:text-gray-900">Exercício 3</a>
            <a class="mr-5 hover:text-gray-900">Exercício 4</a>
          </nav>
        </div>
      </header>
      <div class="container ml-16">
        <div class="mt-10 sm:mt-0 ml-10">
            <div class="md:grid md:grid-cols-3 md:gap-6">
              <div class="md:col-span-1">
                <div class="px-4 sm:px-0">
                  <h3 class="text-lg font-medium leading-6 text-gray-900">Selecione o seu carro</h3>
                  <p class="mt-1 text-sm text-gray-600">Escolha a categoria do carro e depois um dos modelos disponíveis</p>
                </div>
              </div>
              <div class="mt-5 md:mt-0 md:col-span-2 w-9/12">
                <form action="#" method="post">
                  <div class="shadow overflow-hidden sm:rounded-md">
                    <div class="px-4 py-5 bg-white sm:p-6">
                      <div class="grid grid-cols-6 gap-6">
                        <div class="col-span-6 sm:col-span-3">
                            <%
                                ArrayList<String> categorias = (ArrayList<String>) request.getAttribute("categorias");
                            %>
                          <label for="categoria" class="block text-sm font-medium text-gray-700">Categorias</label>
                          <select id="categoria" name="categoria" class="mt-1 block w-48 py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                            <%
                            for(String categoria : categorias){ %>
                              <option> <%= categoria %> </option>
                              <% } %>
                          </select>
                        </div>
                        <br>

                        <div class="col-span-6 sm:col-span-3">
                          <label for="modelo" class="block text-sm font-medium text-gray-700">Modelos</label>
                          <select id="modelo" name="modelo" class="mt-1 block w-48 py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                            <option>Gol</option>
                            <option>Celta</option>
                            <option>Uno</option>
                          </select>
                        </div>
          
                      </div>
                    </div>
                    <!-- <div class="px-4 py-3 bg-gray-50 text-right sm:px-6">
                      <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Selecionar</button>
                    </div> -->
                  </div>
                </form>
              </div>
            </div>
          </div>
          
          <div class="hidden sm:block" aria-hidden="true">
            <div class="py-5">
              <div class="border-t border-gray-200"></div>
            </div>
          </div>
          
          <div class="mt-10 sm:mt-0 ml-10">
            <div class="md:grid md:grid-cols-3 md:gap-6">
              <div class="md:col-span-1">
                <div class="px-4 sm:px-0">
                  <h3 class="text-lg font-medium leading-6 text-gray-900">Adicionais</h3>
                  <p class="mt-1 text-sm text-gray-600">Escolha os adicionais que gostaria que seu carro tenha.<br>Depois de selecionar daremos o preço do seu carro</p>
                </div>
              </div>
              <div class="mt-5 md:mt-0 md:col-span-2 w-9/12 content-center">
                <form action="#" method="POST">
                  <div class="shadow overflow-hidden sm:rounded-md">
                    <div class="px-4 py-5 bg-white space-y-6 sm:p-6">
                      <fieldset>
                        <div class="mt-4 space-y-4">
                          <div class="flex items-start">
                            
                            <div class="flex items-center h-5">
                              <input id="arCondicionado" name="arCondicionado" type="checkbox" class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300 rounded">
                            </div>
                            <div class="ml-3 text-sm">
                              <label for="arCondicionado" class="font-medium text-gray-700">Ar Condicionado</label>
                            </div>
                          </div>
                          
                          <div class="flex items-start">
                            <div class="flex items-center h-5">
                              <input id="cambioAutomatico" name="cambioAutomatico" type="checkbox" class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300 rounded">
                            </div>
                            <div class="ml-3 text-sm">
                              <label for="cambioAutomatico" class="font-medium text-gray-700">Cambio Automático</label>
                            </div>
                          </div>

                          <div class="flex items-start">
                            <div class="flex items-center h-5">
                              <input id="alarme" name="alarme" type="checkbox" class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300 rounded">
                            </div>
                            <div class="ml-3 text-sm">
                              <label for="alarme" class="font-medium text-gray-700">Alarme</label>
                            </div>
                          </div>

                          <div class="flex items-start">
                            <div class="flex items-center h-5">
                              <input id="pinturaEspecial" name="pinturaEspecial" type="checkbox" class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300 rounded">
                            </div>
                            <div class="ml-3 text-sm">
                              <label for="pinturaEspecial" class="font-medium text-gray-700">Pintura especial, metálica ou comemorativa</label>
                            </div>
                          </div>

                          <div class="flex items-start">
                            <div class="flex items-center h-5">
                              <input id="tetoSolar" name="tetoSolar" type="checkbox" class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300 rounded">
                            </div>
                            <div class="ml-3 text-sm">
                              <label for="tetoSolar" class="font-medium text-gray-700">Teto solar</label>
                            </div>
                          </div>

                          <div class="flex items-start">
                            <div class="flex items-center h-5">
                              <input id="kitMultimidia" name="kitMultimidia" type="checkbox" class="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300 rounded">
                            </div>
                            <div class="ml-3 text-sm">
                              <label for="kitMultimidia" class="font-medium text-gray-700">Kit multimídia</label>
                            </div>
                          </div>

                        </div>
                      </fieldset>
                      
                    </div>
                    <div class="px-4 py-3 bg-gray-50 text-right sm:px-6">
                      <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Calcular</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
      </div>
    </body>
    </html>