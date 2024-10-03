.class public final synthetic Lq2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lq2/f;


# direct methods
.method public synthetic constructor <init>(Lq2/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/b;->g:Lq2/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lq2/b;->g:Lq2/f;

    invoke-static {p0}, Lq2/f;->l(Lq2/f;)V

    return-void
.end method
