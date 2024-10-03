.class final Lcom/nothing/cardhost/h$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardhost/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nothing/cardhost/h;


# direct methods
.method public constructor <init>(Lcom/nothing/cardhost/h;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/cardhost/h$b;->a:Lcom/nothing/cardhost/h;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/h$b;->a:Lcom/nothing/cardhost/h;

    invoke-static {p0}, Lcom/nothing/cardhost/h;->f(Lcom/nothing/cardhost/h;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/h$b;->a:Lcom/nothing/cardhost/h;

    invoke-static {p0}, Lcom/nothing/cardhost/h;->f(Lcom/nothing/cardhost/h;)V

    return-void
.end method
