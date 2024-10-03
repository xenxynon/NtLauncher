.class public final Lcom/nothing/launcher/setting/screenlayout/a;
.super Ln4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/screenlayout/a$b;
    }
.end annotation


# static fields
.field public static final v:Lcom/nothing/launcher/setting/screenlayout/a$b;

.field private static final w:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private final m:Landroid/app/Application;

.field private n:Z

.field private final o:Lkotlinx/coroutines/flow/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/u<",
            "Lt4/e;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lkotlinx/coroutines/flow/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/c0<",
            "Lt4/e;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroidx/databinding/ObservableBoolean;

.field private r:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final s:Lt4/c;

.field private final t:Ljava/lang/String;

.field private final u:Lt4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/nothing/launcher/setting/screenlayout/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/screenlayout/a$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/screenlayout/a;->v:Lcom/nothing/launcher/setting/screenlayout/a$b;

    new-instance v0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    sget-object v1, Lcom/nothing/launcher/setting/screenlayout/a$a;->g:Lcom/nothing/launcher/setting/screenlayout/a$a;

    const-class v2, Lcom/nothing/launcher/setting/screenlayout/a;

    invoke-static {v2}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lf6/c;Ly5/l;)V

    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    sput-object v0, Lcom/nothing/launcher/setting/screenlayout/a;->w:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 4

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ln4/d;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/a;->m:Landroid/app/Application;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/e0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/u;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->o:Lkotlinx/coroutines/flow/u;

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->b(Lkotlinx/coroutines/flow/u;)Lkotlinx/coroutines/flow/c0;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->p:Lkotlinx/coroutines/flow/c0;

    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->q:Landroidx/databinding/ObservableBoolean;

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lt4/d;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lt4/f;->c()Z

    move-result v2

    invoke-static {}, Lt4/f;->b()Z

    move-result v3

    iput-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->t:Ljava/lang/String;

    new-instance v0, Lt4/c;

    invoke-direct {v0, v1, v2, v3}, Lt4/c;-><init>(IZZ)V

    iput-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->s:Lt4/c;

    new-instance v0, Lt4/c;

    invoke-direct {v0, v1, v2, v3}, Lt4/c;-><init>(IZZ)V

    iput-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    const-string v0, "getIDP(application)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/a;->r:Lcom/android/launcher3/InvariantDeviceProfile;

    return-void
.end method

.method public static final synthetic l()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    sget-object v0, Lcom/nothing/launcher/setting/screenlayout/a;->w:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method

.method private final n()V
    .locals 8

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->s:Lt4/c;

    invoke-virtual {v0}, Lt4/c;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v1}, Lt4/c;->c()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v0}, Lt4/c;->c()Z

    move-result v0

    invoke-static {v0}, Lt4/f;->e(Z)V

    :cond_0
    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->s:Lt4/c;

    invoke-virtual {v0}, Lt4/c;->d()Z

    move-result v0

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v1}, Lt4/c;->d()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v0}, Lt4/c;->d()Z

    move-result v0

    invoke-static {v0}, Lt4/f;->d(Z)V

    :cond_1
    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v0}, Lt4/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-static {v1}, Lt4/d;->a(Lt4/c;)I

    move-result v1

    invoke-static {v0, v1}, Lt4/d;->b(II)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyPickedGridOption: newGridName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigModel"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/a;->m:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "INSTANCE.get(application)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v3, p0, Lcom/nothing/launcher/setting/screenlayout/a;->m:Landroid/app/Application;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lb3/l;->b(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final o(Landroid/content/Context;)V
    .locals 6

    new-instance v2, Landroid/content/Intent;

    const-string p0, "android.intent.action.MAIN"

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.category.HOME"

    invoke-virtual {v2, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const p0, 0x10008000

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v0, Lz4/a;->a:Lz4/a;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lz4/a;->g(Lz4/a;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)Z

    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private final p()V
    .locals 8

    iget-boolean v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->q:Landroidx/databinding/ObservableBoolean;

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    iget-object v2, p0, Lcom/nothing/launcher/setting/screenlayout/a;->s:Lt4/c;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v0}, Lt4/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-static {v1}, Lt4/d;->a(Lt4/c;)I

    move-result v1

    invoke-static {v0, v1}, Lt4/d;->b(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/a;->m:Landroid/app/Application;

    iget-object v2, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lt4/c;->b(Lt4/c;IZZILjava/lang/Object;)Lt4/c;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lt4/f;->a(Landroid/content/Context;Ljava/lang/String;Lt4/c;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/nothing/launcher/setting/screenlayout/a;->t:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configChanged originGridName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nothing/launcher/setting/screenlayout/a;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newGridName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " currentConfig: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " areOldFriend: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ConfigModel"

    invoke-static {v3, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->o:Lkotlinx/coroutines/flow/u;

    new-instance v3, Lt4/e;

    iget-object v4, p0, Lcom/nothing/launcher/setting/screenlayout/a;->r:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v3, v4, v1, v2}, Lt4/e;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;Z)V

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/u;->setValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/a;->r:Lcom/android/launcher3/InvariantDeviceProfile;

    :cond_0
    return-void
.end method


# virtual methods
.method public final m(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->q:Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->n:Z

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/a;->n()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nothing/launcher/setting/screenlayout/a;->o(Landroid/content/Context;)V

    return-void
.end method

.method public final q()Lkotlinx/coroutines/flow/c0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/c0<",
            "Lt4/e;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->p:Lkotlinx/coroutines/flow/c0;

    return-object p0
.end method

.method public final r()Lt4/c;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    return-object p0
.end method

.method public final s()Landroidx/databinding/ObservableBoolean;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->q:Landroidx/databinding/ObservableBoolean;

    return-object p0
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v0}, Lt4/c;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lt4/c;->f(Z)V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/a;->p()V

    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v0}, Lt4/c;->d()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lt4/c;->g(Z)V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/a;->p()V

    return-void
.end method

.method public final v(I)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v0}, Lt4/c;->e()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/a;->u:Lt4/c;

    invoke-virtual {v0, p1}, Lt4/c;->h(I)V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/a;->p()V

    :cond_0
    return-void
.end method
