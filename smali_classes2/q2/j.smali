.class public final synthetic Lq2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lq2/m;


# direct methods
.method public synthetic constructor <init>(Lq2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/j;->g:Lq2/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lq2/j;->g:Lq2/m;

    invoke-static {p0}, Lq2/m;->S(Lq2/m;)V

    return-void
.end method
