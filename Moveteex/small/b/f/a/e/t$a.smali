.class public Lb/f/a/e/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/a/e/t;->d(Landroid/content/Context;Lb/f/a/e/t$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/f/a/e/t$b;

.field public final synthetic b:Lb/f/a/e/t;


# direct methods
.method public constructor <init>(Lb/f/a/e/t;Lb/f/a/e/t$b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lb/f/a/e/t$a;->b:Lb/f/a/e/t;

    iput-object p2, p0, Lb/f/a/e/t$a;->a:Lb/f/a/e/t$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/revenuecat/purchases/PurchasesError;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lb/f/a/e/t$a;->a:Lb/f/a/e/t$b;

    invoke-interface {p1}, Lb/f/a/e/t$b;->a()V

    return-void
.end method

.method public onReceived(Lcom/revenuecat/purchases/PurchaserInfo;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/revenuecat/purchases/PurchaserInfo;->getEntitlements()Lcom/revenuecat/purchases/EntitlementInfos;

    move-result-object p1

    const-string v0, "Premium"

    invoke-virtual {p1, v0}, Lcom/revenuecat/purchases/EntitlementInfos;->get(Ljava/lang/String;)Lcom/revenuecat/purchases/EntitlementInfo;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 2
    invoke-virtual {p1}, Lcom/revenuecat/purchases/EntitlementInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3
    iget-object v0, p0, Lb/f/a/e/t$a;->a:Lb/f/a/e/t$b;

    iget-object v1, p0, Lb/f/a/e/t$a;->b:Lb/f/a/e/t;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/EntitlementInfo;->getProductIdentifier()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz v1, :cond_54

    .line 4
    invoke-static {p1}, Le/z/t;->h0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_50

    .line 5
    :cond_24
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "lifetime"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v2, Lb/f/a/e/t$c;->e:Lb/f/a/e/t$c;

    goto :goto_50

    .line 6
    :cond_33
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "monthly"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v2, Lb/f/a/e/t$c;->c:Lb/f/a/e/t$c;

    goto :goto_50

    .line 7
    :cond_42
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "annual"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_50

    sget-object v2, Lb/f/a/e/t$c;->d:Lb/f/a/e/t$c;

    .line 8
    :cond_50
    :goto_50
    invoke-interface {v0, v2}, Lb/f/a/e/t$b;->c(Lb/f/a/e/t$c;)V

    goto :goto_5a

    .line 9
    :cond_54
    throw v2

    .line 10
    :cond_55
#    iget-object p1, p0, Lb/f/a/e/t$a;->a:Lb/f/a/e/t$b;
sget-object v2, Lb/f/a/e/t$c;->d:Lb/f/a/e/t$c;
#    invoke-interface {p1}, Lb/f/a/e/t$b;->b()V
invoke-interface {v0, v2}, Lb/f/a/e/t$b;->c(Lb/f/a/e/t$c;)V
    :goto_5a
    return-void
.end method
