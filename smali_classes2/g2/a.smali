.class public abstract Lg2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg2/i$b;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/a$a;
    }
.end annotation


# static fields
.field public static final e:Lg2/a$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lg2/m;

.field private final c:Lf6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf6/e<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg2/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lg2/a;->e:Lg2/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/a;->a:Landroid/content/Context;

    new-instance p1, Lg2/a$b;

    invoke-direct {p1, p0}, Lg2/a$b;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lg2/a;->c:Lf6/e;

    invoke-direct {p0}, Lg2/a;->g()V

    return-void
.end method

.method private final g()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    iget-object v1, p0, Lg2/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.nothing.cardservice.service.api_level"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->queryServiceProperty(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "context.packageManager.q\u2026perty(PROPERTY_API_LEVEL)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$Property;->getInteger()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-static {v1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lg2/a;->d:I

    sget-object v0, Lh2/a;->a:Lh2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host queried service apiLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lg2/a;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh2/a;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lg2/m;)V
    .locals 3

    iput-object p1, p0, Lg2/a;->b:Lg2/m;

    invoke-virtual {p0}, Lg2/a;->f()V

    sget-object v0, Lh2/a;->a:Lh2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceBind service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lg2/a;->b:Lg2/m;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", isAlive = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Host"

    invoke-virtual {v0, p1, p0}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lg2/a;->h()V

    return-void
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lg2/i;->a:Lg2/i;

    iget-object v3, p0, Lg2/a;->c:Lf6/e;

    check-cast v3, Ly5/l;

    invoke-virtual {v2, v3}, Lg2/i;->s(Ly5/l;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lg2/a;->b:Lg2/m;

    if-nez v4, :cond_0

    sget-object v4, Lh2/a;->a:Lh2/a;

    const-string v5, "AbsServiceHost cardService is null, assign to it!!"

    invoke-virtual {v4, v5}, Lh2/a;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lg2/i;->v()Lg2/m;

    move-result-object v2

    iput-object v2, p0, Lg2/a;->b:Lg2/m;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sget-object p0, Lh2/a;->a:Lh2/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ensure service valid cost time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", checkResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh2/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final d()Lg2/m;
    .locals 0

    iget-object p0, p0, Lg2/a;->b:Lg2/m;

    return-object p0
.end method

.method protected final e()I
    .locals 0

    iget p0, p0, Lg2/a;->d:I

    return p0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lg2/a;->b:Lg2/m;

    return-void
.end method
