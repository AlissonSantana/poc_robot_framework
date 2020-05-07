from PageObjectLibrary import PageObject


class busca(PageObject):

    _locators = {

        'btn_sim': 'id=age-gate-button-yes',
        'inpt_endereco': 'id=fake-address-search-input',
        'inpt_busca_enderco': 'id=address-search-input-address',
        'li_auto_complete': "dom=document.body.getElementsByClassName('css-1hsz1r5-text-grayColor-IconListItem')[0]",
        'inpt_numero': 'id=address-details-input-number',
        'inpt_complemento': 'id=address-details-input-complement',
        'btn_ver_produtos': 'id=address-details-button-continue',
        'div_product': "dom=document.body.getElementsByClassName('css-14siswc')[0]",
        'btn_add_produto': 'id=add-product',
        'span_produto_gelado': 'id=product-cold-drink-tag',
        'fig_produto': 'class=css-19158th',
    }

    def click_confirm_age(self):
        """Click to confirm age"""
        self.selib.wait_until_element_is_visible(self.locator.btn_sim)
        self.selib.click_button(self.locator.btn_sim)

    def enter_street_name(self, endereco):
        """Enter street name"""
        self.selib.wait_until_element_is_visible(self.locator.inpt_endereco)
        self.selib.click_button(self.locator.inpt_endereco)
        self.selib.wait_until_element_is_visible(self.locator.inpt_busca_enderco)
        self.selib.input_text(self.locator.inpt_busca_enderco, endereco)

    def click_auto_complete(self):
        """Click address auto complete"""
        self.selib.wait_until_element_is_visible(self.locator.li_auto_complete)
        self.selib.click_element(self.locator.li_auto_complete)

    def enter_adrress_number(self, number):
        """Enter address number"""
        self.selib.wait_until_element_is_visible(self.locator.inpt_numero)
        self.selib.input_text(self.locator.inpt_numero, number)

    def enter_adrress_complement(self, complement):
        """Enter address complement"""
        self.selib.wait_until_element_is_visible(self.locator.inpt_complemento)
        self.selib.input_text(self.locator.inpt_complemento, complement)

    def click_display_products(self):
        """Click address auto complete"""
        self.selib.wait_until_element_is_visible(self.locator.btn_ver_produtos)
        self.selib.click_button(self.locator.btn_ver_produtos)

    def click_product(self):
        """Click on product"""
        self.selib.wait_until_element_is_visible(self.locator.div_product)
        self.selib.click_element(self.locator.div_product)

    def validate_product(self):
        """Validate success modal of new router"""
        self.selib.wait_until_element_is_visible(self.locator.btn_add_produto)
        self.selib.page_should_contain_element(self.locator.btn_add_produto)
        self.selib.wait_until_element_is_visible(self.locator.span_produto_gelado)
        self.selib.page_should_contain_element(self.locator.span_produto_gelado)
        self.selib.wait_until_element_is_visible(self.locator.fig_produto)
        self.selib.page_should_contain_element(self.locator.fig_produto)
