.class public final synthetic Lq2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lq2/f;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lq2/f;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/d;->g:Lq2/f;

    iput p2, p0, Lq2/d;->h:I

    iput p3, p0, Lq2/d;->i:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lq2/d;->g:Lq2/f;

    iget v1, p0, Lq2/d;->h:I

    iget p0, p0, Lq2/d;->i:I

    invoke-static {v0, v1, p0}, Lq2/f;->i(Lq2/f;II)V

    return-void
.end method
