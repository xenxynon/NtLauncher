.class public Lcom/nothing/ui/support/NtCustSwitch;
.super Landroid/widget/Switch;
.source "SourceFile"


# instance fields
.field private g:Ll5/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Switch;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/nothing/ui/support/NtCustSwitch;->g:Ll5/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll5/a;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nothing/ui/support/NtCustSwitch;->g:Ll5/a;

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Switch;->toggle()V

    iget-object v0, p0, Lcom/nothing/ui/support/NtCustSwitch;->g:Ll5/a;

    if-nez v0, :cond_0

    new-instance v0, Ll5/a;

    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ll5/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nothing/ui/support/NtCustSwitch;->g:Ll5/a;

    :cond_0
    iget-object p0, p0, Lcom/nothing/ui/support/NtCustSwitch;->g:Ll5/a;

    invoke-virtual {p0}, Ll5/a;->h()V

    return-void
.end method
