.class Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$1;->this$0:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$1;->this$0:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->access$000(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->access$100(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
