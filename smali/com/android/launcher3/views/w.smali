.class public final synthetic Lcom/android/launcher3/views/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Ljava/lang/Runnable;

.field public final synthetic h:Lcom/android/launcher3/views/Snackbar;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/w;->g:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/launcher3/views/w;->h:Lcom/android/launcher3/views/Snackbar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/w;->g:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/launcher3/views/w;->h:Lcom/android/launcher3/views/Snackbar;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/views/Snackbar;->a(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;Landroid/view/View;)V

    return-void
.end method
