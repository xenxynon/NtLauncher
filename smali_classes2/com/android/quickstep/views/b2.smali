.class public final synthetic Lcom/android/quickstep/views/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/TaskMenuView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskMenuView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/b2;->g:Lcom/android/quickstep/views/TaskMenuView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/b2;->g:Lcom/android/quickstep/views/TaskMenuView;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->b(Lcom/android/quickstep/views/TaskMenuView;Landroid/view/View;)V

    return-void
.end method
