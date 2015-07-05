.class public Lcom/jcraft/jsch/DHG14;
.super Lcom/jcraft/jsch/KeyExchange;


# static fields
.field static final a:[B

.field static final b:[B


# instance fields
.field c:Lcom/jcraft/jsch/DH;

.field d:[B

.field e:[B

.field f:[B

.field g:[B

.field h:[B

.field private v:I

.field private w:I

.field private x:Lcom/jcraft/jsch/Buffer;

.field private y:Lcom/jcraft/jsch/Packet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, -0x6b

    const/16 v6, 0x7c

    const/16 v5, 0x6d

    const/16 v4, 0x18

    const/4 v3, -0x1

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/DHG14;->a:[B

    const/16 v0, 0x101

    new-array v0, v0, [B

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, -0x2f

    aput-byte v1, v0, v4

    const/16 v1, 0x19

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    aput-byte v5, v0, v1

    const/16 v1, 0x3d

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    aput-byte v5, v0, v1

    const/16 v1, 0x45

    aput-byte v5, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    aput-byte v3, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    aput-byte v6, v0, v5

    const/16 v1, 0x6e

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v6, v0, v1

    const/16 v1, -0x48

    aput-byte v1, v0, v6

    const/16 v1, 0x7d

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    aput-byte v5, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    aput-byte v4, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    aput-byte v6, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    aput-byte v4, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    aput-byte v7, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    aput-byte v4, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    aput-byte v7, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    aput-byte v6, v0, v1

    const/16 v1, 0xe5

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    aput-byte v7, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    aput-byte v4, v0, v1

    const/16 v1, 0xed

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    aput-byte v3, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfb

    aput-byte v3, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    aput-byte v3, v0, v1

    const/16 v1, 0x100

    aput-byte v3, v0, v1

    sput-object v0, Lcom/jcraft/jsch/DHG14;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/DHG14;->v:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/DHG14;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "DSA"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "RSA"

    goto :goto_0
.end method

.method public a(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/DHG14;->q:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHG14;->d:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->e:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHG14;->f:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHG14;->g:[B

    :try_start_0
    const-string v0, "sha-1"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHG14;->r:Lcom/jcraft/jsch/HASH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->r:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/DHG14;->y:Lcom/jcraft/jsch/Packet;

    :try_start_1
    const-string v0, "dh"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/DH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHG14;->c:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->c:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->c:Lcom/jcraft/jsch/DH;

    sget-object v1, Lcom/jcraft/jsch/DHG14;->b:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->c:Lcom/jcraft/jsch/DH;

    sget-object v1, Lcom/jcraft/jsch/DHG14;->a:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->c:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHG14;->h:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->y:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->h:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->c([B)V

    if-nez p2, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->y:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXDH_INIT sent"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "expecting SSH_MSG_KEXDH_REPLY"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_1
    const/16 v0, 0x1f

    iput v0, p0, Lcom/jcraft/jsch/DHG14;->w:I

    goto :goto_1
.end method

.method public a(Lcom/jcraft/jsch/Buffer;)Z
    .locals 13

    const/4 v11, 0x1

    const/high16 v10, 0xff0000

    const v9, 0xff00

    const/high16 v8, -0x1000000

    const/4 v1, 0x0

    iget v0, p0, Lcom/jcraft/jsch/DHG14;->w:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->g()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v0

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type: must be 31 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v3

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->c:Lcom/jcraft/jsch/DH;

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/DH;->c([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->c:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->c()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/DHG14;->a([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/DHG14;->s:[B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG14;->e:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG14;->d:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG14;->g:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG14;->f:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG14;->h:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->s:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->r:Lcom/jcraft/jsch/HASH;

    array-length v4, v0

    invoke-interface {v2, v0, v1, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->r:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHG14;->t:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    const/4 v4, 0x2

    aget-byte v2, v2, v11

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    const/4 v5, 0x3

    aget-byte v2, v2, v4

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    const/4 v4, 0x4

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    invoke-static {v2, v4, v0}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x4

    const-string v4, "ssh-rsa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v1, p0, Lcom/jcraft/jsch/DHG14;->v:I

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v2, v4

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v4, v5, 0x1

    aget-byte v2, v2, v5

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v4, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    invoke-static {v2, v5, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v5

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v2, v2, v5

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v5, v6, 0x1

    aget-byte v2, v2, v6

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v5, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    invoke-static {v2, v6, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->q:Lcom/jcraft/jsch/Session;

    const-string v6, "signature.rsa"

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureRSA;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    invoke-interface {v0, v4, v5}, Lcom/jcraft/jsch/SignatureRSA;->a([B[B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->t:[B

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/SignatureRSA;->a([B)V

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/SignatureRSA;->b([B)Z

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ssh_rsa_verify: signature "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_1
    :goto_2
    iput v1, p0, Lcom/jcraft/jsch/DHG14;->w:I

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    :goto_3
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v4, "ssh-dss"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v11, p0, Lcom/jcraft/jsch/DHG14;->v:I

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v2, v4

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v4, v5, 0x1

    aget-byte v2, v2, v5

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v4, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    invoke-static {v2, v5, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v5

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v2, v2, v5

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v5, v6, 0x1

    aget-byte v2, v2, v6

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v5, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    invoke-static {v2, v6, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v2, v2, v6

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v2, v2, v7

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v6, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    invoke-static {v2, v7, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v7

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v2, v2, v7

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v7, v8, 0x1

    aget-byte v2, v2, v8

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v7, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->u:[B

    invoke-static {v2, v8, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v8

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->q:Lcom/jcraft/jsch/Session;

    const-string v8, "signature.dss"

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureDSA;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    invoke-interface {v0, v7, v4, v5, v6}, Lcom/jcraft/jsch/SignatureDSA;->a([B[B[B[B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->t:[B

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/SignatureDSA;->a([B)V

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/SignatureDSA;->b([B)Z

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->d()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ssh_dss_verify: signature "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    :goto_5
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "unknown alg"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_2

    :catch_2
    move-exception v2

    goto :goto_5

    :catch_3
    move-exception v2

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/DHG14;->w:I

    return v0
.end method
