.class public final synthetic Lcom/android/launcher3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/DropTargetHandler;

.field public final synthetic h:Lcom/android/launcher3/util/IntSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/y;->g:Lcom/android/launcher3/DropTargetHandler;

    iput-object p2, p0, Lcom/android/launcher3/y;->h:Lcom/android/launcher3/util/IntSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/y;->g:Lcom/android/launcher3/DropTargetHandler;

    iget-object p0, p0, Lcom/android/launcher3/y;->h:Lcom/android/launcher3/util/IntSet;

    invoke-static {v0, p0}, Lcom/android/launcher3/DropTargetHandler;->b(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method
