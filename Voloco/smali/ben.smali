# classes2.dex

.class public Lben;
.super Ljava/lang/Object;
.source "Clarence.modol"

# interfaces
.implements Lbec$c;
.implements Lbep;


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B


# instance fields
.field private volatile d:Z

.field private e:I

.field private f:Lbes;

.field private g:Lbec;

.field private h:Lbfn;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/os/Handler;

.field private volatile n:Z

.field private final o:Lbec$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 46
    fill-array-data v1, :array_18

    sput-object v1, Lben;->a:[B

    new-array v1, v0, [B

    .line 50
    fill-array-data v1, :array_3c

    sput-object v1, Lben;->b:[B

    new-array v0, v0, [B

    .line 54
    fill-array-data v0, :array_60

    sput-object v0, Lben;->c:[B

    return-void

    :array_18
    .array-data 1
        0x42t
        0x45t
        0x4ft
        0x12t
        0x54t
        -0x35t
        0x54t
        0x27t
        0x44t
        0x3ft
        0x55t
        0x4ct
        0x56t
        0x56t
        0x4ft
        0x45t
        0x4ft
        0x45t
        0x59t
        -0x33t
        0x49t
        0x5dt
        0x5ft
        0x70t
        0x41t
        -0x53t
        0x44t
        -0x11t
        0x4et
        0x3ct
        0x50t
        0x5ft
        0x52t
        0x54t
        0x52t
        0x67t
        0x5ft
        0xbt
        0x45t
        -0x1dt
        0x43t
        -0x1bt
        0x50t
        0x1at
        0x45t
        -0x23t
        0x4dt
        0x70t
        0x41t
        0x57t
        0x5ft
        -0x34t
        0x4et
        -0x6dt
        0x43t
        0x67t
        0x53t
        -0x65t
        0x41t
        0x1bt
        0x54t
        0x17t
        0x4ct
        0x23t
    .end array-data

    :array_3c
    .array-data 1
        0x42t
        0x44t
        0x4ft
        0x23t
        0x54t
        0x5et
        0x54t
        0x66t
        0x44t
        0x59t
        0x55t
        -0x80t
        0x56t
        -0x30t
        0x41t
        0x71t
        0x4ft
        0x28t
        0x59t
        -0x5et
        0x49t
        -0x36t
        0x5ft
        -0x1at
        0x41t
        0x32t
        0x44t
        0x45t
        0x4et
        -0x41t
        0x4ct
        -0x46t
        0x52t
        -0x1ct
        0x52t
        0x76t
        0x5ft
        -0x7ft
        0x45t
        -0x44t
        0x43t
        -0x1at
        0x50t
        0x1ct
        0x45t
        0x2bt
        0x49t
        -0x44t
        0x41t
        -0x35t
        0x5ft
        0x73t
        0x4et
        0x50t
        0x46t
        0x60t
        0x53t
        0x72t
        0x41t
        0x70t
        0x54t
        -0x9t
        0x45t
        0x21t
    .end array-data

    :array_60
    .array-data 1
        0x70t
        0x73t
        0x6ct
        -0xdt
        0x64t
        0x6t
        0x6et
        0xet
        0x68t
        0x75t
        0x62t
        -0x4ct
        0x20t
        -0x2t
        0x61t
        -0x36t
        0x72t
        0x20t
        0x64t
        0x4ft
        0x6bt
        0xet
        0x74t
        -0x5et
        0x73t
        0x6ct
        0x74t
        -0x7ft
        0x61t
        0x64t
        0x74t
        -0x21t
        0x75t
        0x74t
        0x65t
        -0x70t
        0x53t
        0x68t
        0x6ft
        0xct
        0x61t
        0x69t
        0x75t
        0x6bt
        0x63t
        -0x42t
        0x20t
        0x3at
        0x63t
        0x62t
        0x20t
        0x60t
        0x75t
        0x6at
        0x20t
        0x6at
        0x65t
        0x64t
        0x20t
        0x6t
        0x6ct
        0x4et
        0x65t
        0x28t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lbec;Lbes;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbec;",
            "Lbes;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lben;->d:Z

    .line 76
    iput v0, p0, Lben;->e:I

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lben;->k:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lben;->l:Ljava/util/Map;

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lben;->m:Landroid/os/Handler;

    .line 86
    iput-boolean v0, p0, Lben;->n:Z

    .line 271
    new-instance v0, Lben$2;

    invoke-direct {v0, p0}, Lben$2;-><init>(Lben;)V

    iput-object v0, p0, Lben;->o:Lbec$a;

    .line 89
    new-instance v0, Lbfn;

    invoke-direct {v0, p1}, Lbfn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lben;->h:Lbfn;

    .line 90
    iput-object p2, p0, Lben;->g:Lbec;

    .line 91
    iput-object p3, p0, Lben;->f:Lbes;

    .line 92
    iput-object p4, p0, Lben;->i:Ljava/util/List;

    .line 93
    iput-object p5, p0, Lben;->j:Ljava/util/List;

    .line 97
    iget p1, p0, Lben;->e:I

    if-eqz p1, :cond_3a

    return-void

    :cond_3a
    const/4 p1, 0x1

    .line 102
    iput p1, p0, Lben;->e:I

    .line 104
    new-instance p1, Lben$1;

    invoke-direct {p1, p0}, Lben$1;-><init>(Lben;)V

    invoke-virtual {p2, p1}, Lbec;->a(Lbec$b;)V

    return-void
.end method

.method static synthetic a(Lben;I)I
    .registers 2

    .line 42
    iput p1, p0, Lben;->e:I

    return p1
.end method

.method static synthetic a(Lben;)Landroid/os/Handler;
    .registers 1

    .line 42
    iget-object p0, p0, Lben;->m:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .line 73
    sget-object v0, Lbfr;->al:Lbfr;

    invoke-virtual {v0}, Lbfr;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lben;Z)Z
    .registers 2

    .line 42
    iput-boolean p1, p0, Lben;->n:Z

    return p1
.end method

.method static synthetic b(Lben;)Lbfn;
    .registers 1

    .line 42
    iget-object p0, p0, Lben;->h:Lbfn;

    return-object p0
.end method

.method static synthetic c(Lben;)Lbes;
    .registers 1

    .line 42
    iget-object p0, p0, Lben;->f:Lbes;

    return-object p0
.end method

.method private f()Z
    .registers 5

    .line 133
    iget v0, p0, Lben;->e:I

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    return v2

    :cond_c
    return v1
.end method

.method private synthetic g()V
    .registers 1

    .line 250
    invoke-virtual {p0}, Lben;->b()V

    return-void
.end method

.method private synthetic h()V
    .registers 3

    const-string v0, "CLARENCE"

    const-string v1, "Calling update"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lben;->b()V

    return-void
.end method

.method public static synthetic lambda$HmNtmmXIXP8iJR88tK42YjYjNbU(Lben;)V
    .registers 1

    invoke-direct {p0}, Lben;->h()V

    return-void
.end method

.method public static synthetic lambda$uo7hYoC2fAxPjIS2V8iRlpxb_yc(Lben;)V
    .registers 1

    invoke-direct {p0}, Lben;->g()V

    return-void
.end method


# virtual methods
.method public a(Lbep$a;)Ljava/lang/String;
    .registers 3

    .line 394
    invoke-static {}, Lcom/jazarimusic/voloco/VolocoApplication;->c()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f130210

    .line 395
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 154
    iget-object v0, p0, Lben;->f:Lbes;

    invoke-virtual {v0}, Lbes;->b()Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lber;

    .line 157
    iget-object v2, v1, Lber;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 158
    iget-object p1, v1, Lber;->b:Ljava/lang/String;

    return-object p1

    .line 163
    :cond_21
    sget-object p1, Lbfr;->am:Lbfr;

    invoke-virtual {p1}, Lbfr;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 5

    .line 369
    iget-object v0, p0, Lben;->g:Lbec;

    invoke-virtual {v0, p1, p2, p3}, Lbec;->a(IILandroid/content/Intent;)Z

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 6

    .line 355
    :try_start_0
    iget-object v0, p0, Lben;->g:Lbec;

    iget-object v1, p0, Lben;->o:Lbec$a;

    invoke-virtual {v0, p1, p2, p3, v1}, Lbec;->a(Landroid/app/Activity;Ljava/lang/String;ILbec$a;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public a(Lbed;Lbee;)V
    .registers 7

    const/4 v0, 0x4

    .line 210
    iput v0, p0, Lben;->e:I

    .line 212
    invoke-virtual {p1}, Lbed;->c()Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_89

    .line 219
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-virtual {p2}, Lbee;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbei;

    .line 221
    new-instance v2, Lber;

    invoke-virtual {v1}, Lbei;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbei;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 224
    :cond_35
    invoke-virtual {p2}, Lbee;->b()Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    invoke-virtual {p2, v2}, Lbee;->a(Ljava/lang/String;)Lbef;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lbef;->d()Ljava/lang/String;

    .line 228
    invoke-virtual {v2}, Lbef;->e()Ljava/lang/String;

    .line 229
    invoke-virtual {v2}, Lbef;->a()Ljava/lang/String;

    goto :goto_3d

    .line 231
    :cond_57
    iget-object p2, p0, Lben;->f:Lbes;

    invoke-virtual {p2, p1}, Lbes;->b(Ljava/util/List;)V

    .line 233
    iget-object p1, p0, Lben;->f:Lbes;

    invoke-virtual {p1, v0}, Lbes;->a(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lben;->n:Z

    .line 245
    iget-object p2, p0, Lben;->h:Lbfn;

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lben;->a:[B

    invoke-static {v2}, Lbgo;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbfn;->a(Landroid/content/Intent;)Z

    .line 246
    iget-boolean p2, p0, Lben;->d:Z

    if-eqz p2, :cond_89

    .line 247
    iput-boolean p1, p0, Lben;->d:Z

    .line 248
    iget-object p1, p0, Lben;->m:Landroid/os/Handler;

    new-instance p2, L-$$Lambda$ben$uo7hYoC2fAxPjIS2V8iRlpxb_yc;

    invoke-direct {p2, p0}, L-$$Lambda$ben$uo7hYoC2fAxPjIS2V8iRlpxb_yc;-><init>(Lben;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_89
    :goto_89
    return-void
.end method

.method public a(Ljava/lang/String;Lbeo;Lbeo;)V
    .registers 6

    .line 309
    iget-object v0, p0, Lben;->f:Lbes;

    invoke-virtual {v0}, Lbes;->a()Ljava/util/List;

    move-result-object v0

    .line 312
    sget-object v1, Lbej;->o:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 313
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
#const/4 v1, 0x0
    if-eqz v1, :cond_27

    .line 314
    sget-object p1, Lbej;->c:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 316
    invoke-interface {p2}, Lbeo;->a()V

    goto :goto_26

    .line 318
    :cond_23
    invoke-interface {p3}, Lbeo;->a()V
invoke-interface {p2}, Lbeo;->a()V
    :goto_26
    return-void

    .line 323
    :cond_27
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
#const/4 v1, 0x1
    if-nez v1, :cond_4f

    sget-object v1, Lbej;->d:Ljava/lang/String;

    .line 324
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    sget-object p1, Lbej;->n:Ljava/lang/String;

    .line 325
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    sget-object p1, Lbej;->c:[Ljava/lang/String;

    .line 326
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_4f

    .line 330
    :cond_4b
    invoke-interface {p3}, Lbeo;->a()V
invoke-interface {p2}, Lbeo;->a()V
    goto :goto_52

    .line 328
    :cond_4f
    :goto_4f
    invoke-interface {p2}, Lbeo;->a()V

    :goto_52
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lben;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 175
    :goto_10
    iput-object p1, p0, Lben;->i:Ljava/util/List;

    if-nez v0, :cond_15

    return-void

    .line 180
    :cond_15
    invoke-direct {p0}, Lben;->f()Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string p1, "CLARENCE"

    const-string v0, "content has changed, querying inventory"

    .line 181
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object p1, p0, Lben;->m:Landroid/os/Handler;

    new-instance v0, L-$$Lambda$ben$HmNtmmXIXP8iJR88tK42YjYjNbU;

    invoke-direct {v0, p0}, L-$$Lambda$ben$HmNtmmXIXP8iJR88tK42YjYjNbU;-><init>(Lben;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2f

    .line 188
    :cond_2d
    iput-boolean v2, p0, Lben;->d:Z

    :goto_2f
    return-void
.end method

.method public b(Lbep$a;)Ljava/lang/String;
    .registers 4

    .line 402
    sget-object v0, Lbep$a;->a:Lbep$a;

    if-ne p1, v0, :cond_7

    const-string v0, "fant"

    goto :goto_9

    :cond_7
    const-string v0, "liljencrants"

    .line 404
    :goto_9
    invoke-virtual {p0, v0}, Lben;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    sget-object v1, Lbep$a;->a:Lbep$a;

    if-ne p1, v1, :cond_15

    const p1, 0x7f1301d4

    goto :goto_18

    :cond_15
    const p1, 0x7f1301d5

    .line 406
    :goto_18
    invoke-static {}, Lcom/jazarimusic/voloco/VolocoApplication;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%s"

    .line 408
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 5

    .line 194
    invoke-direct {p0}, Lben;->f()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x3

    .line 200
    iput v0, p0, Lben;->e:I

    .line 202
    :try_start_a
    iget-object v0, p0, Lben;->g:Lbec;

    const/4 v1, 0x1

    iget-object v2, p0, Lben;->i:Ljava/util/List;

    iget-object v3, p0, Lben;->j:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p0}, Lbec;->a(ZLjava/util/List;Ljava/util/List;Lbec$c;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method

.method public c()Z
    .registers 3

    .line 377
    iget-object v0, p0, Lben;->f:Lbes;

    invoke-virtual {v0}, Lbes;->a()Ljava/util/List;

    move-result-object v0

    .line 378
    sget-object v1, Lbej;->q:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()Z
    .registers 3

    .line 383
    iget-object v0, p0, Lben;->f:Lbes;

    invoke-virtual {v0}, Lbes;->a()Ljava/util/List;

    move-result-object v0

    .line 384
    sget-object v1, Lbej;->r:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e()Z
    .registers 2

    .line 389
    invoke-virtual {p0}, Lben;->c()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lben;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_10

    :cond_d
    const/4 v0, 0x0
const/4 v0, 0x1
    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method
