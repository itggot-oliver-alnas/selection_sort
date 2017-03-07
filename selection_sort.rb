require_relative "random_list_generator" #Pretty obvious tbh

def selection_sort(ary:) #Definerar funktionen "selection_sort"
  sorted = [] #Gör en tom lista vid namnet "sorted"
  index_list = 0 #Skapa en variabel vid namnet "index_list" med ett värde av 0
  index = index_smallest = 0 #Tilldela variablerna "index" och "index_smallest"
  index_smallest = 0 #Tilldela "index_smallest" 0
  while ary.any? #Loopa medans "ary" har någonting i listan

    while index < ary.length #Loopa tills index har ett större värde än längden på "ary"
      if ary[index_smallest] < ary[index_list] #Om värdet på plats "index_smallest" i "ary" är mindre än värdet på plats "index_list"
        index += 1 #Höj index med 1
        index_list += 1 #Höj index_list med 1
      else #Annars
        index_smallest = index_list #Tilldela "index_smallest" samma värde som "index_list"
        index += 1 #Höj index med 1
        index_list += 1 #Höj index_list med 1
      end

    end
    index = 0 #Tilldela "index" 0
    index_list = 0 #Tilldela "index_list" 0
    sorted.push(ary[index_smallest]) #Pusha värdet på plats "index_smallest" från "ary" in till "sorted"
    ary.delete_at(index_smallest) #Ta bort värdet på plats "index_smallest" i "ary"
    index_smallest = 0 #Tilldela index_smallest 0
  end

  return sorted #Returnera "sorted"
end

p selection_sort(ary: generate_list(length: 5))
