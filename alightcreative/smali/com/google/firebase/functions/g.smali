# classes2.dex

.class public Lcom/google/firebase/functions/g;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@18.1.0"


# static fields
.field private static final g:Lcom/google/android/gms/tasks/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z


# instance fields
.field private final a:Lh/w;

.field private final b:Lcom/google/firebase/functions/o;

.field private final c:Lcom/google/firebase/functions/a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/k;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/k;-><init>()V

    sput-object v0, Lcom/google/firebase/functions/g;->g:Lcom/google/android/gms/tasks/k;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/google/firebase/functions/g;->h:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/functions/a;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://%1$s-%2$s.cloudfunctions.net/%3$s"

    .line 2
    iput-object v0, p0, Lcom/google/firebase/functions/g;->f:Ljava/lang/String;

    .line 3
    new-instance v0, Lh/w;

    invoke-direct {v0}, Lh/w;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/functions/g;->a:Lh/w;

    .line 4
    new-instance v0, Lcom/google/firebase/functions/o;

    invoke-direct {v0}, Lcom/google/firebase/functions/o;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/functions/g;->b:Lcom/google/firebase/functions/o;

    .line 5
    invoke-static {p4}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/google/firebase/functions/a;

    iput-object p4, p0, Lcom/google/firebase/functions/g;->c:Lcom/google/firebase/functions/a;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/functions/g;->d:Ljava/lang/String;

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/functions/g;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/google/firebase/functions/g;->m(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/functions/g;)Lcom/google/firebase/functions/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/functions/g;->b:Lcom/google/firebase/functions/o;

    return-object p0
.end method

.method static synthetic b()Lcom/google/android/gms/tasks/k;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/firebase/functions/g;->g:Lcom/google/android/gms/tasks/k;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/l;Lcom/google/firebase/functions/k;)Lcom/google/android/gms/tasks/j;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/functions/l;",
            "Lcom/google/firebase/functions/k;",
            ")",
            "Lcom/google/android/gms/tasks/j<",
            "Lcom/google/firebase/functions/n;",
            ">;"
        }
    .end annotation

    const-string v0, "name cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/firebase/functions/g;->i(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/google/firebase/functions/g;->b:Lcom/google/firebase/functions/o;

    invoke-virtual {v1, p2}, Lcom/google/firebase/functions/o;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "data"

    .line 5
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "application/json"

    .line 7
    invoke-static {v0}, Lh/u;->d(Ljava/lang/String;)Lh/u;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lh/a0;->d(Lh/u;Ljava/lang/String;)Lh/a0;

    move-result-object p2

    .line 9
    new-instance v0, Lh/z$a;

    invoke-direct {v0}, Lh/z$a;-><init>()V

    invoke-virtual {v0, p1}, Lh/z$a;->h(Ljava/net/URL;)Lh/z$a;

const-string v1,"invoke-virtual {v0, p2}, Lh/z$a;->f(Lh/a0;)Lh/z$a;#modol"
const-string v1,"https://raw.githubusercontent.com/bahguo/-/%C2%AD/getAccountStatusAndLicenses"
invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result p1
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
const-string p1,"POST"
if-eqz v1,:cond_1
const-string p1,"GET"
const/4 p2,0x0
:cond_1
invoke-virtual {v0, p1, p2}, Lh/z$a;->e(Ljava/lang/String;Lh/a0;)Lh/z$a;
    .line 10
    invoke-virtual {p3}, Lcom/google/firebase/functions/l;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bearer "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/firebase/functions/l;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Authorization"

    invoke-virtual {v0, p2, p1}, Lh/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lh/z$a;

    .line 12
    :cond_57
    invoke-virtual {p3}, Lcom/google/firebase/functions/l;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 13
    invoke-virtual {p3}, Lcom/google/firebase/functions/l;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Firebase-Instance-ID-Token"

    invoke-virtual {v0, p2, p1}, Lh/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lh/z$a;

    .line 14
    :cond_66
    iget-object p1, p0, Lcom/google/firebase/functions/g;->a:Lh/w;

    invoke-virtual {p4, p1}, Lcom/google/firebase/functions/k;->a(Lh/w;)Lh/w;

    move-result-object p1

    .line 15
    invoke-virtual {v0}, Lh/z$a;->a()Lh/z;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/w;->x(Lh/z;)Lh/e;

    move-result-object p1

    .line 16
    new-instance p2, Lcom/google/android/gms/tasks/k;

    invoke-direct {p2}, Lcom/google/android/gms/tasks/k;-><init>()V

    .line 17
    new-instance p3, Lcom/google/firebase/functions/g$b;

    invoke-direct {p3, p0, p2}, Lcom/google/firebase/functions/g$b;-><init>(Lcom/google/firebase/functions/g;Lcom/google/android/gms/tasks/k;)V

    invoke-interface {p1, p3}, Lh/e;->P(Lh/f;)V

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/k;->a()Lcom/google/android/gms/tasks/j;

    move-result-object p1

    return-object p1
.end method

.method public static f()Lcom/google/firebase/functions/g;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/firebase/c;->i()Lcom/google/firebase/c;

    move-result-object v0

    const-string v1, "us-central1"

    invoke-static {v0, v1}, Lcom/google/firebase/functions/g;->h(Lcom/google/firebase/c;Ljava/lang/String;)Lcom/google/firebase/functions/g;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lcom/google/firebase/c;)Lcom/google/firebase/functions/g;
    .registers 2

    const-string v0, "us-central1"

    .line 1
    invoke-static {p0, v0}, Lcom/google/firebase/functions/g;->h(Lcom/google/firebase/c;Ljava/lang/String;)Lcom/google/firebase/functions/g;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/google/firebase/c;Ljava/lang/String;)Lcom/google/firebase/functions/g;
    .registers 3

    const-string v0, "You must call FirebaseApp.initializeApp first."

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v0, Lcom/google/firebase/functions/h;

    invoke-virtual {p0, v0}, Lcom/google/firebase/c;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/functions/h;

    const-string v0, "Functions component does not exist."

    .line 4
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/functions/h;->a(Ljava/lang/String;)Lcom/google/firebase/functions/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/google/firebase/functions/g;Lcom/google/android/gms/tasks/j;)Lcom/google/android/gms/tasks/j;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/firebase/functions/g;->c:Lcom/google/firebase/functions/a;

    invoke-interface {p0}, Lcom/google/firebase/functions/a;->getContext()Lcom/google/android/gms/tasks/j;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/google/firebase/functions/g;Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/k;Lcom/google/android/gms/tasks/j;)Lcom/google/android/gms/tasks/j;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/j;->t()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/j;->o()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/m;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_f
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/j;->p()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/firebase/functions/l;

    .line 4
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/google/firebase/functions/g;->d(Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/l;Lcom/google/firebase/functions/k;)Lcom/google/android/gms/tasks/j;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Landroid/content/Context;)V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/firebase/functions/g$a;

    invoke-direct {v0}, Lcom/google/firebase/functions/g$a;-><init>()V

    invoke-static {p0, v0}, Ld/c/a/c/f/a;->b(Landroid/content/Context;Ld/c/a/c/f/a$a;)V

    return-void
.end method

.method private static m(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/firebase/functions/g;->g:Lcom/google/android/gms/tasks/k;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-boolean v1, Lcom/google/firebase/functions/g;->h:Z

    if-eqz v1, :cond_9

    .line 3
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lcom/google/firebase/functions/g;->h:Z

    .line 5
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    .line 6
    invoke-static {p0}, Lcom/google/firebase/functions/d;->a(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1e
    move-exception p0

    .line 9
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method


# virtual methods
.method c(Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/k;)Lcom/google/android/gms/tasks/j;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/functions/k;",
            ")",
            "Lcom/google/android/gms/tasks/j<",
            "Lcom/google/firebase/functions/n;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/functions/g;->g:Lcom/google/android/gms/tasks/k;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/k;->a()Lcom/google/android/gms/tasks/j;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/functions/e;->a(Lcom/google/firebase/functions/g;)Lcom/google/android/gms/tasks/c;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/j;->m(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/j;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/functions/f;->a(Lcom/google/firebase/functions/g;Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/k;)Lcom/google/android/gms/tasks/c;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/j;->m(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/j;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/google/firebase/functions/m;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/firebase/functions/m;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/functions/m;-><init>(Lcom/google/firebase/functions/g;Ljava/lang/String;)V

    return-object v0
.end method

.method i(Ljava/lang/String;)Ljava/net/URL;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/functions/g;->f:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/functions/g;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/firebase/functions/g;->d:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_16
    new-instance v0, Ljava/net/URL;
const-string v1, "https://us-central1-alight-creative.cloudfunctions.net/getAccountStatusAndLicenses"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_0
const-string p1, "https://raw.githubusercontent.com/bahguo/-/%C2%AD/getAccountStatusAndLicenses"
:cond_0
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
