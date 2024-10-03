.class public final synthetic Lcom/android/launcher3/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/PagedView;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/PagedView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/h3;->g:Lcom/android/launcher3/PagedView;

    iput p2, p0, Lcom/android/launcher3/h3;->h:I

    iput p3, p0, Lcom/android/launcher3/h3;->i:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/h3;->g:Lcom/android/launcher3/PagedView;

    iget v1, p0, Lcom/android/launcher3/h3;->h:I

    iget p0, p0, Lcom/android/launcher3/h3;->i:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/PagedView;->g(Lcom/android/launcher3/PagedView;II)V

    return-void
.end method
