.class public final synthetic Lcom/nothing/launcher/card/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Ly5/a;


# direct methods
.method public synthetic constructor <init>(Ly5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/e;->g:Ly5/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/e;->g:Ly5/a;

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->c(Ly5/a;)V

    return-void
.end method
