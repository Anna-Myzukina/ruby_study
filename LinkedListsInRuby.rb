=begin
Этот пост посвящен связанным спискам с использованием Ruby.

Связанный список - это структура данных, которая состоит из набора узлов, представляющих последовательность. 
Каждый элемент в связанном списке будет содержать элемент данных и ссылку на следующий элемент в связанном списке (указатель)


В Ruby наиболее целесообразно использовать массивы благодаря встроенным методам, таким как 
shift, 
unshift, 
enq, 
deq, 
push и 
pop, 
но полезно знать, почему связанные списки могут быть полезны.

Самое большое преимущество связанных списков над массивами в других языках - это их способность вставлять / удалять элементы
списка без перераспределения или реорганизации всей структуры данных. 
Массивы имеют индексы, поэтому удаление значения с индексом 0, например, требует переиндексации каждого отдельного элемента.

Обратная сторона этого, однако, заключается в том, что выполнение операций, 
требующих доступа к конкретным элементам связанного списка, может быть громоздким. 
Например, для поиска последнего элемента в связанном списке необходимо проверить каждый элемент списка.

Вот некоторые дополнительные преимущества и недостатки связанных списков:

LL Pros:

Динамический - LL выделяют необходимую память при запуске программы и могут расширяться в режиме реального времени 
без перегрузки памяти.

Вставить и удалить легко.

Легко создавать линейные структуры данных, такие как стеки и очереди со связанными списками.

LL Минусы:

Поскольку каждый элемент содержит значение и указатель, он требует больше памяти.

Вы должны обращаться к узлам последовательно, так как они определены; 
кроме того, они не хранятся постоянно, поэтому для доступа к элементу требуется больше времени.

С односвязным списком очень страшно повернуть вспять. 
Списки с двойной связью также содержат указатель на предыдущий узел, 
но это еще более интенсивно использует память.

Реализация Ruby
Имеет смысл определить два класса ruby ​​при реализации связанного списка в Ruby - один для каждого элемента, 
называемого Node, и другой для самого списка, называемого LinkedList.

Вот первый. Обратите внимание, что узел инициализируется с его собственной точкой данных, 
а также указателем на следующий узел
=end

class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end

#Next, the LinkedList class:

class LinkedList

  def initialize(val)
    @head = Node.new(val, nil)
  end

  def add(val)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(val, nil)
  end

  def delete(val)
    current.next = @head
    if current.val = val
      @head = current.next
    else
      while (current.next != nil) && (current.next.val != val)
        current = current.next
      end
      unless current.next == nil
        current.next = current.next.next
      end
    end
  end

  def return_list
    elements = []
    current = @head
    while current.next != nil
      elements << current
      current = current.next
    end
    elements << current
  end
end
=begin
И вот, у вас это есть - базовая реализация односвязного списка в Ruby. 
В следующий раз мы будем использовать связанный список для построения 
стека и очереди.
=end
