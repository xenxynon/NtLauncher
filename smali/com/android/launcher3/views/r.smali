.class public final synthetic Lcom/android/launcher3/views/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic g:Lz4/a;


# direct methods
.method public synthetic constructor <init>(Lz4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/r;->g:Lz4/a;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/r;->g:Lz4/a;

    invoke-virtual {p0, p1}, Lz4/a;->h(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
