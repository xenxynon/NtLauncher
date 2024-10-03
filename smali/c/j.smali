.class public final synthetic Lc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lc/r;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lc/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/j;->g:Lc/r;

    iput p2, p0, Lc/j;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc/j;->g:Lc/r;

    iget p0, p0, Lc/j;->h:I

    invoke-static {v0, p0}, Lc/r;->f(Lc/r;I)V

    return-void
.end method
