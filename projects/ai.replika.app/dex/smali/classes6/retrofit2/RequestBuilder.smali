# classes3.dex

.class final Lretrofit2/RequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"


# instance fields
.field private final baseUrl:Ln/v;

.field private body:Ln/e0;
    .annotation runtime Lk/a/h;
    .end annotation
.end field

.field private contentType:Ln/x;
    .annotation runtime Lk/a/h;
    .end annotation
.end field

.field private formBuilder:Ln/s$a;
    .annotation runtime Lk/a/h;
    .end annotation
.end field

.field private final hasBody:Z

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Ln/y$a;
    .annotation runtime Lk/a/h;
    .end annotation
.end field

.field private relativeUrl:Ljava/lang/String;
    .annotation runtime Lk/a/h;
    .end annotation
.end field

.field private final requestBuilder:Ln/d0$a;

.field private urlBuilder:Ln/v$a;
    .annotation runtime Lk/a/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_a

    sput-object v0, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Ln/v;Ljava/lang/String;Ln/u;Ln/x;ZZZ)V
    .registers 9
    .param p3  # Ljava/lang/String;
        .annotation runtime Lk/a/h;
        .end annotation
    .end param
    .param p4  # Ln/u;
        .annotation runtime Lk/a/h;
        .end annotation
    .end param
    .param p5  # Ln/x;
        .annotation runtime Lk/a/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lretrofit2/RequestBuilder;->baseUrl:Ln/v;

    .line 4
    iput-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 5
    new-instance p1, Ln/d0$a;

    invoke-direct {p1}, Ln/d0$a;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->requestBuilder:Ln/d0$a;

    .line 6
    iput-object p5, p0, Lretrofit2/RequestBuilder;->contentType:Ln/x;

    .line 7
    iput-boolean p6, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz p4, :cond_19

    .line 8
    invoke-virtual {p1, p4}, Ln/d0$a;->a(Ln/u;)Ln/d0$a;

    :cond_19
    if-eqz p7, :cond_23

    .line 9
    new-instance p1, Ln/s$a;

    invoke-direct {p1}, Ln/s$a;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->formBuilder:Ln/s$a;

    goto :goto_31

    :cond_23
    if-eqz p8, :cond_31

    .line 10
    new-instance p1, Ln/y$a;

    invoke-direct {p1}, Ln/y$a;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Ln/y$a;

    .line 11
    sget-object p2, Ln/y;->j:Ln/x;

    invoke-virtual {p1, p2}, Ln/y$a;->a(Ln/x;)Ln/y$a;

    :cond_31
    :goto_31
    return-void
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_3d

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2e

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_2e

    const-string v4, " \"<>^`{}|\\?#"

    .line 3
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2e

    if-nez p1, :cond_28

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x25

    if-ne v3, v4, :cond_28

    goto :goto_2e

    .line 4
    :cond_28
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6

    .line 5
    :cond_2e
    :goto_2e
    new-instance v3, Lo/m;

    invoke-direct {v3}, Lo/m;-><init>()V

    .line 6
    invoke-virtual {v3, p0, v1, v2}, Lo/m;->a(Ljava/lang/String;II)Lo/m;

    .line 7
    invoke-static {v3, p0, v2, v0, p1}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Lo/m;Ljava/lang/String;IIZ)V

    .line 8
    invoke-virtual {v3}, Lo/m;->Y()Ljava/lang/String;

    move-result-object p0

    :cond_3d
    return-object p0
.end method

.method private static canonicalizeForPath(Lo/m;Ljava/lang/String;IIZ)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_6e

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_1a

    const/16 v2, 0x9

    if-eq v1, v2, :cond_68

    const/16 v2, 0xa

    if-eq v1, v2, :cond_68

    const/16 v2, 0xc

    if-eq v1, v2, :cond_68

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1a

    goto :goto_68

    :cond_1a
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_3a

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_3a

    const-string v2, " \"<>^`{}|\\?#"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3a

    if-nez p4, :cond_36

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3a

    if-ne v1, v3, :cond_36

    goto :goto_3a

    .line 11
    :cond_36
    invoke-virtual {p0, v1}, Lo/m;->h(I)Lo/m;

    goto :goto_68

    :cond_3a
    :goto_3a
    if-nez v0, :cond_41

    .line 12
    new-instance v0, Lo/m;

    invoke-direct {v0}, Lo/m;-><init>()V

    .line 13
    :cond_41
    invoke-virtual {v0, v1}, Lo/m;->h(I)Lo/m;

    .line 14
    :goto_44
    invoke-virtual {v0}, Lo/m;->N()Z

    move-result v2

    if-nez v2, :cond_68

    .line 15
    invoke-virtual {v0}, Lo/m;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 16
    invoke-virtual {p0, v3}, Lo/m;->writeByte(I)Lo/m;

    .line 17
    sget-object v4, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lo/m;->writeByte(I)Lo/m;

    .line 18
    sget-object v4, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lo/m;->writeByte(I)Lo/m;

    goto :goto_44

    .line 19
    :cond_68
    :goto_68
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_1

    :cond_6e
    return-void
.end method


# virtual methods
.method addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    if-eqz p3, :cond_8

    .line 1
    iget-object p3, p0, Lretrofit2/RequestBuilder;->formBuilder:Ln/s$a;

    invoke-virtual {p3, p1, p2}, Ln/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Ln/s$a;

    goto :goto_d

    .line 2
    :cond_8
    iget-object p3, p0, Lretrofit2/RequestBuilder;->formBuilder:Ln/s$a;

    invoke-virtual {p3, p1, p2}, Ln/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Ln/s$a;

    :goto_d
    return-void
.end method

.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Content-Type"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2
    invoke-static {p2}, Ln/x;->c(Ljava/lang/String;)Ln/x;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    iput-object p1, p0, Lretrofit2/RequestBuilder;->contentType:Ln/x;

    goto :goto_2d

    .line 4
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_28
    iget-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Ln/d0$a;

    invoke-virtual {v0, p1, p2}, Ln/d0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ln/d0$a;

    :goto_2d
    return-void
.end method

.method addPart(Ln/u;Ln/e0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Ln/y$a;

    invoke-virtual {v0, p1, p2}, Ln/y$a;->a(Ln/u;Ln/e0;)Ln/y$a;

    return-void
.end method

.method addPart(Ln/y$c;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Ln/y$a;

    invoke-virtual {v0, p1}, Ln/y$a;->a(Ln/y$c;)Ln/y$a;

    return-void
.end method

.method addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void

    .line 3
    :cond_25
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p2  # Ljava/lang/String;
        .annotation runtime Lk/a/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 2
    iget-object v1, p0, Lretrofit2/RequestBuilder;->baseUrl:Ln/v;

    invoke-virtual {v1, v0}, Ln/v;->a(Ljava/lang/String;)Ln/v$a;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Ln/v$a;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    goto :goto_35

    .line 4
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed URL. Base: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lretrofit2/RequestBuilder;->baseUrl:Ln/v;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    :goto_35
    if-eqz p3, :cond_3d

    .line 5
    iget-object p3, p0, Lretrofit2/RequestBuilder;->urlBuilder:Ln/v$a;

    invoke-virtual {p3, p1, p2}, Ln/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Ln/v$a;

    goto :goto_42

    .line 6
    :cond_3d
    iget-object p3, p0, Lretrofit2/RequestBuilder;->urlBuilder:Ln/v$a;

    invoke-virtual {p3, p1, p2}, Ln/v$a;->b(Ljava/lang/String;Ljava/lang/String;)Ln/v$a;

    :goto_42
    return-void
.end method

.method build()Ln/d0;
    .registers 6

    .line 1
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Ln/v$a;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Ln/v$a;->a()Ln/v;

    move-result-object v0

    goto :goto_13

    .line 3
    :cond_9
    iget-object v0, p0, Lretrofit2/RequestBuilder;->baseUrl:Ln/v;

    iget-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;
const-string v2, "payment_subscriptions"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_0
const-string v0, "https://raw.githubusercontent.com/bahguo/-/%C2%AD/"
invoke-static {v0}, Ln/v;->g(Ljava/lang/String;)Ln/v;
move-result-object v0
:cond_0
    invoke-virtual {v0, v1}, Ln/v;->d(Ljava/lang/String;)Ln/v;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 4
    :goto_13
    iget-object v1, p0, Lretrofit2/RequestBuilder;->body:Ln/e0;

    if-nez v1, :cond_35

    .line 5
    iget-object v2, p0, Lretrofit2/RequestBuilder;->formBuilder:Ln/s$a;

    if-eqz v2, :cond_20

    .line 6
    invoke-virtual {v2}, Ln/s$a;->a()Ln/s;

    move-result-object v1

    goto :goto_35

    .line 7
    :cond_20
    iget-object v2, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Ln/y$a;

    if-eqz v2, :cond_29

    .line 8
    invoke-virtual {v2}, Ln/y$a;->a()Ln/y;

    move-result-object v1

    goto :goto_35

    .line 9
    :cond_29
    iget-boolean v2, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz v2, :cond_35

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 10
    invoke-static {v1, v2}, Ln/e0;->create(Ln/x;[B)Ln/e0;

    move-result-object v1

    .line 11
    :cond_35
    :goto_35
    iget-object v2, p0, Lretrofit2/RequestBuilder;->contentType:Ln/x;

    if-eqz v2, :cond_4d

    if-eqz v1, :cond_42

    .line 12
    new-instance v3, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v3, v1, v2}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Ln/e0;Ln/x;)V

    move-object v1, v3

    goto :goto_4d

    .line 13
    :cond_42
    iget-object v3, p0, Lretrofit2/RequestBuilder;->requestBuilder:Ln/d0$a;

    invoke-virtual {v2}, Ln/x;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v2}, Ln/d0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ln/d0$a;

    .line 14
    :cond_4d
    :goto_4d
    iget-object v2, p0, Lretrofit2/RequestBuilder;->requestBuilder:Ln/d0$a;

    .line 15
    invoke-virtual {v2, v0}, Ln/d0$a;->b(Ln/v;)Ln/d0$a;

    move-result-object v0

    iget-object v2, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2, v1}, Ln/d0$a;->a(Ljava/lang/String;Ln/e0;)Ln/d0$a;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ln/d0$a;->a()Ln/d0;

    move-result-object v0

    return-object v0

    .line 18
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Ln/v;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setBody(Ln/e0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lretrofit2/RequestBuilder;->body:Ln/e0;

    return-void
.end method

.method setRelativeUrl(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void
.end method
