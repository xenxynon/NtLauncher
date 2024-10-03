.class Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;
.super Landroidx/preference/SwitchPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->applyTo(Landroidx/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

.field final synthetic val$flag:Lcom/android/launcher3/uioverrides/flags/DebugFlag;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroid/content/Context;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;->this$0:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;->val$flag:Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    invoke-direct {p0, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;Lcom/android/launcher3/uioverrides/flags/DebugFlag;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;->lambda$onBindViewHolder$0(Lcom/android/launcher3/uioverrides/flags/DebugFlag;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/android/launcher3/uioverrides/flags/DebugFlag;Landroid/view/View;)Z
    .locals 1

    invoke-static {}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p1, Lcom/android/launcher3/uioverrides/flags/DebugFlag;->key:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;->this$0:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

    invoke-static {p2, p1}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->access$100(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;->this$0:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

    invoke-static {p2, p0, p1}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->access$200(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;->this$0:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->access$000(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;->val$flag:Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    new-instance v1, Lcom/android/launcher3/uioverrides/flags/f;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/uioverrides/flags/f;-><init>(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
