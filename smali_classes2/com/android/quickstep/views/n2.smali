.class public final synthetic Lcom/android/quickstep/views/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/n2;->g:Lcom/android/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/n2;->g:Lcom/android/quickstep/views/TaskView;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/TaskView;->c(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)V

    return-void
.end method
