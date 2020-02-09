/*
Optimization tests:
OPT=0/NAN : 81775 cycles
OPT=1 : 22088 cycles String decoded correctly
OPT=2 : 21856 cycles String decoded correctly 
OPT=3 : 21788 cycles String decoded correctly

The optimization seems to eliminate ALOT of NOPs that comes from the conversion from C.
It also seems to combine multiple lines of code instead of executing them one by one, probably to make the optimizations it has to combine rows into a new execution for the calculated optimized version of those rows (might just happen to be some rows are together because that was the order of compiling, im not sure)
It also seems to manipulate the stack and its variables in a different way during later optimizations, saving to it much more often.
Seems to change around the branching and its conditions too, not only optimizing during branch pipe slots.
It also changes up the order of instructions activating.
The higher the optimization the more code is executed in a batch at the end, like it preps variables to retrieve from the stack for the end.
From OPT2 to OPT3 it seems to combine alot more rows translating into a lot fewer lines, I can imagine this optimization level breaking code more often even if it diden't break mine.
*/


char plain[132] __attribute__((section(".data")));
int abc[] = {0x0e78c180,0xf0526f62,0x801961e1,0x0};
int coded[] __attribute__((section(".data"))) = { 0x4fa4c1a8,0x2fd13f3f,0x0a72e87f,0x5a794000,0xaf9ef62d,0x607c8c4c,0xb3a623d8,0x0c4d27b9
,0xa42bfc7d,0xb9278f45,0xde945a58,0xe6d14e20,0x405659ac,0x9c149ec4,0x5640c877,0x19f6299b,0xb3f9e2af,0x24d1ad27
,0xac9f8eb2,0x11e81fb0,0x29009597,0x270526d9,0x06430115,0x2dbf732d,0xc577a205,0xa5e57078,0x35b54bd2,0xe9f49fc6
,0x5cce7d3f,0xfb64bbb3,0x056d7659,0x0826ce33,0x34602f8e,0xc944f521,0x0766c3fa,0xb5274462,0x9a5a28f9,0x285bd203
,0x412530c4,0x7c123bca,0xf55f159d,0x58f1e1c3,0x73075881,0x4d740c9a,0x22277046,0x1666ebe9,0xb582b5e8,0xe4b38740
,0x294b44a5,0x33d28c6f,0x5c56ace5,0x544dbb4b,0xd8cb0219,0xaa67e087,0xd7ac3fb0,0xe2c864ab,0xf31fc83b,0xf315b25d
,0xacf203dd,0x49506efd,0xabb08094,0xfd3e6021,0x277d2fc1,0x89e44930,0x3fd14dd0,0x4a689da6,0x13f29094,0xd048bb2f
,0x9deb8062,0xcfd07c62,0xda33410c,0x7e725321,0x59deda87,0xa68373ea,0xe9ff9feb,0xd8900d5f,0x97a79b36,0x0};

int main(void) {
	int seed = 0x4403ec7f;
	decode(coded, plain, &seed);
	while (0==0) {
	}
}
int codgen(int *seed_addr) {				/*Pointer seed arg*/
	unsigned int x, y;				/*Initialize vars*/
	signed int n;
	n = (unsigned)(*seed_addr >> 20) & 31; 		/*The old shifting diden't seem to work,
						 	so we do shift 20 and take the 5 bits (31)
							and get seed<24:20>*/

	while (n >= 0) {
		x = ((unsigned)*seed_addr << 17 |	/*x = Rotate seed 17 left consistent with assembly instructions*/
			(unsigned)*seed_addr >> 15);
		
		y = (unsigned) *seed_addr >> 1;		/*y = Divide by 2*/
		*seed_addr = x + y;			/*seed = x + y*/
		n = n - 1;				/*Loop con*/
	}
	return *seed_addr ^ 0x66aea94d;			/*Return Seed XOR 0x66aea94d*/
}
int decode(int *wordarr,
	char *bytearr, int *seed_addr) {		/*Pointer arguments*/
	unsigned int m, r,				/*Initialize vars*/
		x, y, mshifted;
	x = ~codgen(seed_addr);				/*One's complement of codgen return*/
	if (*wordarr== 0) {				/*If content of word arr = 0...*/
		*bytearr = 0;				/*...bytearr content = 0*/
		r = x;
	}
	else {
		y = decode(wordarr+1, bytearr+1		/*Recursive call with args++*/
			,seed_addr);
		m = (x - y) - *wordarr;			/*m = (x-y)-cont @ wordarr*/
		mshifted = m << 13;			/*Need new var for two shifts, not overwrite m*/
		*bytearr = mshifted >> 24;		/*Shift pt 2*/
		r = ~codgen(seed_addr) + 1;		/*Two's complement of codegen return*/
		r = x + y + m + r + 5;
	}
	return r;
}
