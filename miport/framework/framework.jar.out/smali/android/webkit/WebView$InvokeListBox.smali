.class Landroid/webkit/WebView$InvokeListBox;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeListBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;,
        Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;,
        Landroid/webkit/WebView$InvokeListBox$Container;
    }
.end annotation


# instance fields
.field private mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

.field private mMultiple:Z

.field private mSelectedArray:[I

.field private mSelection:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[II)V
    .registers 10
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selection"

    .prologue
    .line 9064
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9065
    iput p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    .line 9066
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 9068
    array-length v1, p2

    .line 9069
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 9070
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_35

    .line 9071
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 9072
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 9073
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 9074
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 9070
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 9076
    :cond_35
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[IILandroid/webkit/WebView$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 8919
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[II)V

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[I)V
    .registers 10
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selected"

    .prologue
    .line 9050
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9051
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 9052
    iput-object p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    .line 9054
    array-length v1, p2

    .line 9055
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 9056
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_35

    .line 9057
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 9058
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 9059
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 9060
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 9056
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 9062
    :cond_35
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[ILandroid/webkit/WebView$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 8919
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[I)V

    return-void
.end method

.method static synthetic access$10300(Landroid/webkit/WebView$InvokeListBox;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 8919
    iget-boolean v0, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    return v0
.end method

.method static synthetic access$10400(Landroid/webkit/WebView$InvokeListBox;)[Landroid/webkit/WebView$InvokeListBox$Container;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8919
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v2, 0x1

    .line 9123
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$10900(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x109008f

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 9125
    .local v4, listView:Landroid/widget/ListView;
    new-instance v5, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

    invoke-direct {v5, p0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    .line 9126
    .local v5, adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-static {v3}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 9130
    .local v6, b:Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_4a

    .line 9131
    const v1, 0x104000a

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$1;

    invoke-direct {v3, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$1;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v6, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9138
    const/high16 v1, 0x104

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$2;

    invoke-direct {v3, p0}, Landroid/webkit/WebView$InvokeListBox$2;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v6, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9145
    :cond_4a
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/webkit/WebView;->access$11102(Landroid/webkit/WebView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 9146
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9147
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 9154
    iget-boolean v1, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-nez v1, :cond_79

    move v1, v2

    :goto_5e
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 9155
    iget-boolean v1, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_7b

    .line 9156
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 9157
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    array-length v8, v1

    .line 9158
    .local v8, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_6d
    if-ge v7, v8, :cond_a4

    .line 9159
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    aget v1, v1, v7

    invoke-virtual {v4, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 9158
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    .line 9154
    .end local v7           #i:I
    .end local v8           #length:I
    :cond_79
    const/4 v1, 0x0

    goto :goto_5e

    .line 9162
    :cond_7b
    new-instance v1, Landroid/webkit/WebView$InvokeListBox$3;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$InvokeListBox$3;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9173
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a4

    .line 9174
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 9175
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 9176
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 9177
    new-instance v0, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;

    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v5, v1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getItemId(I)J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;-><init>(Landroid/webkit/WebView$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V

    .line 9179
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v5, v0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 9182
    .end local v0           #observer:Landroid/database/DataSetObserver;
    :cond_a4
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$11100(Landroid/webkit/WebView;)Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebView$InvokeListBox$4;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$InvokeListBox$4;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 9189
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$11100(Landroid/webkit/WebView;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 9190
    return-void
.end method
