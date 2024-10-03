.class public final Lg2/k;
.super Lg2/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/k$a;
    }
.end annotation


# static fields
.field public static final g:Lg2/k$a;

.field private static volatile h:Lg2/k;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg2/k$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lg2/k;->g:Lg2/k$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lg2/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lg2/k;->f:Landroid/content/Context;

    sget-object v0, Lg2/i;->a:Lg2/i;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lg2/i;->x(Landroid/content/Context;Lg2/i$b;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lg2/k;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic i()Lg2/k;
    .locals 1

    sget-object v0, Lg2/k;->h:Lg2/k;

    return-object v0
.end method

.method public static final synthetic j(Lg2/k;)V
    .locals 0

    sput-object p0, Lg2/k;->h:Lg2/k;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/nothing/cardservice/CardWidgetMetaInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lg2/b;->a:Lg2/b;

    invoke-virtual {p0}, Lg2/a;->e()I

    move-result p0

    const-string v2, "getInstalledCardWithLevel"

    invoke-virtual {v1, v2, p0}, Lg2/b;->a(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    invoke-interface {v0, p1, p0}, Lg2/m;->u(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lg2/m;->K(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    const-string p1, "emptyList()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public final l(I)Lcom/nothing/cardservice/CardWidgetMetaInfo;
    .locals 1

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lg2/m;->w(I)Lcom/nothing/cardservice/CardWidgetMetaInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "widget service dead?: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Manager"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final m(I)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lg2/m;->d(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "widget service dead?: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Manager"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()Z
    .locals 2

    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final o(ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg2/a;->c()V

    invoke-virtual {p0}, Lg2/a;->d()Lg2/m;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lg2/m;->P(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "widget service dead?: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Manager"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
