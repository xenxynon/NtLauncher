.class public final synthetic Li4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Li4/a;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Li4/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/b;->g:Li4/a;

    iput-object p2, p0, Li4/b;->h:Ljava/lang/String;

    iput-object p3, p0, Li4/b;->i:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li4/b;->g:Li4/a;

    iget-object v1, p0, Li4/b;->h:Ljava/lang/String;

    iget-object p0, p0, Li4/b;->i:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Li4/c;->a(Li4/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
