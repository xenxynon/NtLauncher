.class public final synthetic Lcom/android/launcher3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/DropTargetHandler;

.field public final synthetic h:Lkotlin/jvm/internal/a0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/DropTargetHandler;Lkotlin/jvm/internal/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z;->g:Lcom/android/launcher3/DropTargetHandler;

    iput-object p2, p0, Lcom/android/launcher3/z;->h:Lkotlin/jvm/internal/a0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/z;->g:Lcom/android/launcher3/DropTargetHandler;

    iget-object p0, p0, Lcom/android/launcher3/z;->h:Lkotlin/jvm/internal/a0;

    invoke-static {v0, p0}, Lcom/android/launcher3/DropTargetHandler;->c(Lcom/android/launcher3/DropTargetHandler;Lkotlin/jvm/internal/a0;)V

    return-void
.end method
