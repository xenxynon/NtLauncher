.class final Lcom/nothing/launcher/setting/screenlayout/a$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/setting/screenlayout/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        "Lcom/nothing/launcher/setting/screenlayout/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lcom/nothing/launcher/setting/screenlayout/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/launcher/setting/screenlayout/a$a;

    invoke-direct {v0}, Lcom/nothing/launcher/setting/screenlayout/a$a;-><init>()V

    sput-object v0, Lcom/nothing/launcher/setting/screenlayout/a$a;->g:Lcom/nothing/launcher/setting/screenlayout/a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/viewmodel/CreationExtras;)Lcom/nothing/launcher/setting/screenlayout/a;
    .locals 0

    const-string p0, "$this$initializer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/app/Application;

    new-instance p1, Lcom/nothing/launcher/setting/screenlayout/a;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/setting/screenlayout/a;-><init>(Landroid/app/Application;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/screenlayout/a$a;->a(Landroidx/lifecycle/viewmodel/CreationExtras;)Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object p0

    return-object p0
.end method
