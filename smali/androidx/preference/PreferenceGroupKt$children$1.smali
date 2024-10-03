.class public final Landroidx/preference/PreferenceGroupKt$children$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceGroupKt;->getChildren(Landroidx/preference/PreferenceGroup;)Lg6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg6/g<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_children:Landroidx/preference/PreferenceGroup;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/PreferenceGroupKt$children$1;->$this_children:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/preference/PreferenceGroupKt$children$1;->$this_children:Landroidx/preference/PreferenceGroup;

    invoke-static {p0}, Landroidx/preference/PreferenceGroupKt;->iterator(Landroidx/preference/PreferenceGroup;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
