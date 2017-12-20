package inerface;

import java.util.List;

    public interface PublicInterface<E> {
        public int add(E obj);

        public int delete(String name);

        public List<E> getAllobj();

        public E find(String str);

        public int Update(E obj);

    }


