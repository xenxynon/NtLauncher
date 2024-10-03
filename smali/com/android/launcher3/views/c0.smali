.class public final synthetic Lcom/android/launcher3/views/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/views/StickyHeaderLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/StickyHeaderLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/c0;->g:Lcom/android/launcher3/views/StickyHeaderLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/c0;->g:Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-static {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->b(Lcom/android/launcher3/views/StickyHeaderLayout;)V

    return-void
.end method
