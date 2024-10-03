.class public final synthetic Lcom/nothing/cardhost/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/cardhost/d;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardhost/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardhost/b;->g:Lcom/nothing/cardhost/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/b;->g:Lcom/nothing/cardhost/d;

    invoke-static {p0}, Lcom/nothing/cardhost/d;->i(Lcom/nothing/cardhost/d;)V

    return-void
.end method
