<?php

class Pagination
{


    private $max = 10;

    /**
     *
     * cuvantul cheie
     *
     */
    private $index = 'page';

    /**
     *
     * pagina curenta
     *
     */
    private $current_page;

    /**
     *
     * totalul
     *
     */
    private $total;

    /**
     *
     * cate article pe o pagina
     *
     */
    private $limit;

    /**
     * pornirea cu datele necesare pt navigare
     * $total - totalul de articole
     * $limit - cate articole pe o pagina
     */
    public function __construct($total, $currentPage, $limit, $index)
    {
        # setam totalul
        $this->total = $total;

        # setam limita pe o pagina
        $this->limit = $limit;

        # setam cheia in url
        $this->index = $index;

        # setam cate pagini
        $this->amount = $this->amount();

        # setam numarul paginii
        $this->setCurrentPage($currentPage);
    }

    /**
     *  pentru constructia link-urilor
     *
     */
    public function get()
    {
        # pentru scrierea linkurilor
        $links = null;

        # Primim limitele pentru linkuri
        $limits = $this->limits();

        $html = '<ul class="pagination">';
        # Geneream linkurile
        for ($page = $limits[0]; $page <= $limits[1]; $page++) {
            # Daca este curenta de adauga clasa activ
            if ($page == $this->current_page) {
                $links .= '<li class="active"><a href="#">' . $page . '</a></li>';
            } else {
                # daca nu, generam linkurile
                $links .= $this->generateHtml($page);
            }
        }

        # Daca s-au generat link-urile
        if (!is_null($links)) {
            # Daca pagina curenta nu e prima
            if ($this->current_page > 1)
                # Cream link spre prima pagina
                $links = $this->generateHtml(1, '&lt;') . $links;

            # Daca pagina nu e ultima creeeam link spre ultima pagina
            if ($this->current_page < $this->amount)
                # Creem link spre ultima
                $links .= $this->generateHtml($this->amount, '&gt;');
        }

        $html .= $links . '</ul>';

        # introarcem hmtl
        return $html;
    }

    /**
     * Pentru generarea codului HTML a link-ului
     * $page - numarul paginii
     */
    private function generateHtml($page, $text = null)
    {
        # Daca textul linkului nui afisat
        if (!$text)
            # afisam textul ca numarul paginii
            $text = $page;

        $currentURI = rtrim($_SERVER['REQUEST_URI'], '/') . '/';
        $currentURI = preg_replace('~/page-[0-9]+~', '', $currentURI);
        # formama codul html si il intoarcem
        return
            '<li><a href="' . $currentURI . $this->index . $page . '">' . $text . '</a></li>';
    }

    /**
     *  primim pozitia de start
     */
    private function limits()
    {
        # calculam linkul din stanga (pentru a fi linul activ in mijloc)
        $left = $this->current_page - round($this->max / 2);

        # calculam inceputul
        $start = $left > 0 ? $left : 1;

        # Daca inainte este minim $this->max pagini
        if ($start + $this->max <= $this->amount)
            # seteaza sfarsitul ciclului $this->max paginilor
            $end = $start > 1 ? $start + $this->max : $this->max;
        else {
            # sfarsit n
            $end = $this->amount;

            # startul scadem $this->max de la sfarsit
            $start = $this->amount - $this->max > 0 ? $this->amount - $this->max : 1;
        }

        # returnam
        return
            array($start, $end);
    }

    /**
     * pentru setarea paginii curente
     */
    private function setCurrentPage($currentPage)
    {
        # Primim numaarul paginii
        $this->current_page = $currentPage;

        # daca pagina curenta ii mai mare decat 0
        if ($this->current_page > 0) {
            #  Daca pagina curenta ii mai mica decat media cantitatii paginilor
            if ($this->current_page > $this->amount)
                # Setam pagina la urma
                $this->current_page = $this->amount;
        } else
            # Setam pagina la incemput
            $this->current_page = 1;
    }

    /**
     * Pentru a primi media numerelor paginilor
     */
    private function amount()
    {
        # Calculam si returnam
        return round($this->total / $this->limit);
    }

}
