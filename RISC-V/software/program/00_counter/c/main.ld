SECTIONS
{
    . = 0x00000000;
    .text : {
        * (.start);
        * (.text);
    }
}
