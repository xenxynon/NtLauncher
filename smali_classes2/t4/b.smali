.class public final synthetic Lt4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/setting/screenlayout/GridConfigPreference;

.field public final synthetic h:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/setting/screenlayout/GridConfigPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/b;->g:Lcom/nothing/launcher/setting/screenlayout/GridConfigPreference;

    iput-object p2, p0, Lt4/b;->h:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lt4/b;->g:Lcom/nothing/launcher/setting/screenlayout/GridConfigPreference;

    iget-object p0, p0, Lt4/b;->h:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/nothing/launcher/setting/screenlayout/GridConfigPreference;->a(Lcom/nothing/launcher/setting/screenlayout/GridConfigPreference;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
