.class public final Ly4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/m0;


# static fields
.field public static final h:Ly4/a;


# instance fields
.field private final synthetic g:Li6/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly4/a;

    invoke-direct {v0}, Ly4/a;-><init>()V

    sput-object v0, Ly4/a;->h:Ly4/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Li6/r2;->b(Li6/v1;ILjava/lang/Object;)Li6/z;

    move-result-object v0

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object v0

    invoke-static {v0}, Li6/n0;->a(Lq5/g;)Li6/m0;

    move-result-object v0

    iput-object v0, p0, Ly4/a;->g:Li6/m0;

    return-void
.end method


# virtual methods
.method public final a(Lz2/c;)V
    .locals 2

    const-string p0, "style"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz2/c$b;->g:Lz2/c$b;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lz2/c$c;->g:Lz2/c$c;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    sget-object v0, Li4/c;->b:Li4/c$b;

    invoke-virtual {v0}, Li4/c$b;->a()Li4/c;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    const-string p0, "stw_style"

    invoke-virtual {v0, p0, v1}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void

    :cond_1
    new-instance p0, Ln5/j;

    invoke-direct {p0}, Ln5/j;-><init>()V

    throw p0
.end method

.method public final b(JI)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "times"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    const-string p2, "launcher_drawer_access"

    invoke-virtual {p1, p2, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    const-string v0, "gridName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ly4/a$a;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Ly4/a$a;-><init>(Ljava/lang/String;Lq5/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    const/4 p0, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x75e9028a

    const/4 v3, -0x1

    if-eq v1, v2, :cond_3

    const v2, -0x546f7b16

    if-eq v1, v2, :cond_2

    const p0, 0x439b41e4

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "THEMED_ICONS_NOTHING"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "SYSTEM_ICONS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_3
    const-string p0, "THEMED_ICONS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lo3/b;->l(Landroid/content/Context;)Lv3/a;

    move-result-object p0

    invoke-virtual {p0}, Lv3/a;->i()Ljava/lang/String;

    move-result-object v0

    move p0, v3

    goto :goto_1

    :cond_4
    const/4 p0, 0x2

    :cond_5
    :goto_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "style"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-ne p0, v3, :cond_6

    const-string p0, "icon_package"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object p0, Li4/c;->b:Li4/c$b;

    invoke-virtual {p0}, Li4/c$b;->a()Li4/c;

    move-result-object p0

    const-string p2, "launcher_iconpack"

    invoke-virtual {p0, p2, p1}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_7
    return-void
.end method

.method public final e(I)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "popview_launch"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Li4/c;->d(Landroid/os/Bundle;)Z

    return-void
.end method

.method public final f(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 1

    const-string p0, "itemInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p0, p2, 0x1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const-string v0, "folder_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "folder_resize"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Li4/c;->b:Li4/c$b;

    invoke-virtual {p0}, Li4/c$b;->a()Li4/c;

    move-result-object p0

    const-string p1, "launcher_foldersize"

    :goto_0
    invoke-virtual {p0, p1, p2}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_1

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "icon_resize"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string p1, "icon_package"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Li4/c;->b:Li4/c$b;

    invoke-virtual {p0}, Li4/c$b;->a()Li4/c;

    move-result-object p0

    const-string p1, "launcher_iconsize"

    goto :goto_0

    :goto_1
    return-void
.end method

.method public getCoroutineContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Ly4/a;->g:Li6/m0;

    invoke-interface {p0}, Li6/m0;->getCoroutineContext()Lq5/g;

    move-result-object p0

    return-object p0
.end method
