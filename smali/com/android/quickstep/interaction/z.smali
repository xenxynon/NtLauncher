.class public final synthetic Lcom/android/quickstep/interaction/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/z;->g:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/z;->g:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->d(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
