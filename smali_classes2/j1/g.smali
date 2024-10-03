.class final Lj1/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lj1/a;


# direct methods
.method constructor <init>(Lj1/a;)V
    .locals 0

    iput-object p1, p0, Lj1/g;->a:Lj1/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    iget-object p2, p0, Lj1/g;->a:Lj1/a;

    invoke-static {p2}, Lj1/a;->c(Lj1/a;)Lj1/m;

    move-result-object p2

    invoke-virtual {p2}, Lj1/m;->a()V

    iget-object p2, p0, Lj1/g;->a:Lj1/a;

    invoke-static {p2}, Lj1/a;->e(Lj1/a;)Lj1/d;

    move-result-object p2

    invoke-virtual {p2}, Lj1/m;->a()V

    iget-object p2, p0, Lj1/g;->a:Lj1/a;

    invoke-static {p2, p1}, Lj1/a;->g(Lj1/a;Landroid/content/Context;)V

    iget-object p1, p0, Lj1/g;->a:Lj1/a;

    invoke-static {p1}, Lj1/a;->h(Lj1/a;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lj1/g;->a:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->D()V

    :cond_0
    return-void
.end method
