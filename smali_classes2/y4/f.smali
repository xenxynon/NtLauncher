.class public final Ly4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/m0;


# static fields
.field public static final h:Ly4/f;


# instance fields
.field private final synthetic g:Li6/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly4/f;

    invoke-direct {v0}, Ly4/f;-><init>()V

    sput-object v0, Ly4/f;->h:Ly4/f;

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

    iput-object v0, p0, Ly4/f;->g:Li6/m0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "shortcut_appfeature"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Li4/c;->b:Li4/c$b;

    invoke-virtual {v0}, Li4/c$b;->a()Li4/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Li4/c;->c(Landroid/os/Bundle;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "shortcut_appfeatureused"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Li4/c;->b:Li4/c$b;

    invoke-virtual {v0}, Li4/c$b;->a()Li4/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Li4/c;->c(Landroid/os/Bundle;)Z

    return-void
.end method

.method public final c(Z)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-string v0, "shortcut_notification"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Li4/c;->c(Landroid/os/Bundle;)Z

    return-void
.end method

.method public final d(Z)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-string v0, "shortcut"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Li4/c;->c(Landroid/os/Bundle;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "shortcut_widget"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Li4/c;->b:Li4/c$b;

    invoke-virtual {v0}, Li4/c$b;->a()Li4/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Li4/c;->c(Landroid/os/Bundle;)Z

    return-void
.end method

.method public final f()V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "shortcut_widgetused"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Li4/c;->b:Li4/c$b;

    invoke-virtual {v0}, Li4/c$b;->a()Li4/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Li4/c;->c(Landroid/os/Bundle;)Z

    return-void
.end method

.method public getCoroutineContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Ly4/f;->g:Li6/m0;

    invoke-interface {p0}, Li6/m0;->getCoroutineContext()Lq5/g;

    move-result-object p0

    return-object p0
.end method
